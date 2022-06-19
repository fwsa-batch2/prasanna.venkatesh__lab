require './connect_db'
require './todo'
connect_db!
obj = Todo.new
obj.show_list