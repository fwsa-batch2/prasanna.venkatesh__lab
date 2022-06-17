require 'active_record'

def connect_db!
  ActiveRecord::Base.establish_connection(
    host: 'localhost', 
    adapter: 'mysql2',
    database: 'saas_db', 
    username: 'root', 
    password: 'P.balaji2001'
  )
end