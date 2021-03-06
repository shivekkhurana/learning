require 'sinatra'
require 'haml'
require 'json'
require 'sinatra/reloader' if development?
require 'sinatra/cookies'



#################################################
#################################################
#################################################
#################################################
#################################################
#################################################
def abs(number)
	if number < 0
		-number
	else
		number
	end
end

def distance(a,b)
	Math.sqrt( ( b[1].to_i - a[1].to_i )**2 + (b[0].to_i - a[0].to_i)**2 )
end

def get_start(current_location, graph_object)
	d = 1.0/0
  n = nil
  for node in graph_object
    d_temp = distance(current_location, node[1..node.length]) 
    if d_temp < d
      d = d_temp
      n = node
    end
  end
  return n
end

def apt_cycle(start, graph)
	all_nodes = graph.permutation.to_a
	cycle = nil
	d = 1.0/0
	all_nodes.each do |perm|
		if perm[0] == start
			d_temp = 0
			perm.each_cons(2) do |node, next_node|
				l = node.length
				d_temp += distance(node[1..l], next_node[1..l])
			end
			if d_temp < d
				d = d_temp
				cycle = perm
			end
		end
	end
	return cycle
end

#################################################
#################################################
#################################################
#################################################
#################################################
#################################################

db = JSON.parse File.read('./public/js/db.js')
get '/' do
  haml :index
end

get '/select' do
  haml :select, :locals => {:site_list=>db}
end

get '/show' do
	bounds = {}
	db.each do|site_id, site_group|
		temp = []
		site_group.each do|id, info|
			temp << id;
		end
		bounds[site_id] = temp
	end
	response.set_cookie('site_bounds', bounds.to_json.to_s)
	
	graph = []
	selections = JSON.parse(cookies[:wish_list])
	selections.each do |k,v|
		current = db[k][v] 
		m_id = current["Name"].gsub(" ", "_")
		graph << [m_id] + current["Location"]
	end
	start = get_start(cookies[:location].split(','), graph)
	graph = apt_cycle(start, graph)
  haml :show, :locals => {:selections => selections, :db=> db, :order => graph}
end

get '/get_next/:k_v' do|k_v|
	#return next v corresponding to k
	k_v = k_v.split('_')
	k = k_v[0]
	v = k_v[1]
	code = v.ord + 1 
	r = code.chr
	if !db[k][r]
		r = "a"
	end
	return r.to_json
end

get '/loc' do
	graph = []
	selections = JSON.parse(cookies[:wish_list])
	selections.each do |k,v|
		current = db[k][v] 
		m_id = current["Name"].gsub(" ", "_")
		graph << [m_id] + current["Location"]
	end
	start = get_start(cookies[:location].split(','), graph)
	graph = apt_cycle(start, graph)
	graph.to_s
	
end


