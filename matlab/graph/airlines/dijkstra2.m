function b=dijkstra2(distance_matrix,source,dest)
[n,n]=size(distance_matrix);

visited_nodes(1:n)=0;               % initializing Visited nodes to all 0's. It will become 1 as we cover it.

if (source == dest)
    shortest_distance = 0
    route = source
else
    distance_from_source(1:n)=inf;                % initializing distance vector of all to infinity
    previous_vertex(1:n)=inf;                % initializing previous node vector to all inf 

    distance_from_source(source) = 0;               % setting source distance to 0 

    while sum(visited_nodes)~=n               % Run until all nodes are used 
         cand=[];                     
         for i=1:n 
             if visited_nodes(i)==0
                cand=[cand distance_from_source(i)]; 
             else 
                cand=[cand inf];
             end 
         end 

         [min_dist,index] = min(cand);          % Choose the lowest candidate
         visited_nodes(index) = 1;                  % Update visited nodes 

         for i=1:n                  % Update distance vector if feasible 
             if (distance_matrix(index,i) ~= 0) && (distance_from_source(index) + distance_matrix(index,i) < distance_from_source(i))  
             distance_from_source(i)=distance_from_source(index) + distance_matrix(index,i); 
             previous_vertex(i) = index; 

             end 
         end 
    end 

    %distance_from_source                % Output Distance vector 
    %previous_vertex                     % Output Previous Node vector 

    shortest_path=[dest]; 
    travel=dest; 

    while (previous_vertex(travel) ~= source)                 % Traverse backwards to find path 
     shortest_path=[previous_vertex(travel) shortest_path]; 
     travel=previous_vertex(travel); 
    end 
    shortest_distance=distance_from_source(dest)
    route = [previous_vertex(travel) shortest_path] 
end