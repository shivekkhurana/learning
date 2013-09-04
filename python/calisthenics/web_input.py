#inputs for cic website

from string import strip, capitalize

#call in file db
import sqlite3
connection = sqlite3.connect('cic_web_input.db')
db = connection.cursor()

#create table and push batches | DO NOT UNCOMMENT

##!db.execute('''CREATE TABLE batch(name VARCHAR(255), class INT(4))''')
##!db.execute("INSERT INTO batch VALUES('HUMANITIES', '2016')")
##!db.execute("INSERT INTO batch VALUES('INNOVATION', '2016')")
##!db.execute("INSERT INTO batch VALUES('HUMANITIES', '2015')")

##db.execute('''CREATE TABLE students(batch VARCHAR(255), class INT(4), roll_no INT(20), name VARCHAR(255), about VARCHAR(255))''')
##connection.commit()

#globals
admin = False
batch = ''
clas = ''

batches = []
classes = []

##VALIDATIONS
def get_from_list(prompt, l):
    string = raw_input(prompt)
    while(string not in l):
        print 'error :',string,' not a valid ',prompt
        string = raw_input(prompt)
    return string

def get_valid_string(prompt):
    string = raw_input(prompt)
    while(not len(strip(string)) > 0):
        print "error : nothing entered !"
        string = raw_input(prompt)
    return string
#/VALIDATIONS

##AUTH
def make_admin():
    global batches, classes, clas, batch, admin
    p = get_valid_string('Password : ')
    passes = ['ab12', 'dawn']
    if(p in passes):
        admin = True
        db.execute('''SELECT * FROM batch''')
        data = db.fetchall()
        for d in data:
            batches.append(d[0])
            classes.append(str(d[1]))
        batches = batches + ['i', 'I', 'h', 'H']
        batch = get_from_list("Batch : ", batches)
        if(batch == 'i' or batch == 'I'):
            batch = 'INNOVATION'
        if(batch == 'h' or batch == 'H'):
            batch = 'HUMANITIES'
        clas = get_from_list("Class : ", classes)
        
def break_admin():
    admin = False

def get_admin():
    global batch, clas, admin
    if admin:
        print "Batch : %s Class : %s"%(batch,clas)
#/AUTH    

##CRUD
def push_info(roll_no, name, about):
    global batch, clas, db, connection, admin
    if admin:
        t = (batch, clas, roll_no, name, about)
        db.execute('INSERT INTO students VALUES (?,?,?,?,?)', t)
        connection.commit()

def reverse_push_info(roll_no):
    global admin
    if admin:
        db.execute("DELETE FROM students WHERE roll_no = %s"%(roll_no))
        connection.commit()

def get_all_rolls():
    db.execute("SELECT roll_no FROM students")
    raw = db.fetchall()
    rolls = []
    for r in raw:
        rolls.append(str(r[0]))
    return rolls

def show():
    global batch, clas
    db.execute("SELECT * FROM students WHERE batch = ? AND class = ?", (batch, clas))
    data = db.fetchall()
    for d in data:
        print "%s %s %s \nName : %s\nAbout : %s\n"%(d[0],d[1],d[2],d[3],d[4])

def show_all():
    db.execute("SELECT * FROM students ")
    data = db.fetchall()
    for d in data:
        print "%s %s %s \nName : %s\nAbout : %s\n"%(d[0],d[1],d[2],d[3],d[4])

def show_by_roll(roll_no):
    db.execute("SELECT * FROM students WHERE roll_no = %s"%(roll_no))
    print "%s %s %s \nName : %s\nAbout : %s\n"%(db.fetchone())
    
def update():
    global admin 
    if admin:
        roll_no = get_from_list("Roll no. to update : ", get_all_rolls())
        db.execute("SELECT roll_no, name, about FROM students")
        raw = db.fetchone()
        data = {'roll_no' : raw[0], 'name' : raw[1], 'about' : raw[2]}
        for k,v in data.iteritems():
            print k, ' = ', v
            if(raw_input("Edit ? (y,n)") == 'y'):
                data[k] = get_valid_string("%s : "%(k))
        reverse_push_info(raw[0])
        push_info(data['roll_no'], data['name'], data['about'])
#/CRUD

def get_info():
    name = capitalize(get_valid_string("Name : "))
    roll_no = get_valid_string("Roll no. : ")
    about = get_valid_string("About yourself : ")
    push_info(roll_no, name, about)

def delete():
        reverse_push_info(get_from_list("Roll no. to delete : ", get_all_rolls()))
        print 'deleted !'

def index():
    options = ['Adminise', 'Create', 'Read all in class', 'Read by roll_no', 'Update', 'Delete', 'Get admin info', 'Show all', 'Logout']
    flag = True

    while(flag):
        i = 0
        s = ''
        while(i < len(options)):
            s += str(i)+ ' '+str(options[i])+' | ' 
            i = i+1
        print s
        print '\n'
        opt = raw_input("Enter Choice : ")
        if(opt == '0'):
            make_admin()
        if(opt == '1'):
            get_info()
        if(opt == '2'):
            show()
        if(opt == '3'):
            show_by_roll()
        if(opt == '4'):
            update()
        if(opt == '5'):
            delete()
        if(opt == '6'):
            get_admin()
        if(opt == '7'):
            show_all()
        if(opt == '8'):
            break_admin()
            show()
            print "Log out success !"
            make_admin()
index()