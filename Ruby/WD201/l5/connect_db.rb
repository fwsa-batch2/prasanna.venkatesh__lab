require 'active_record'

def connect_db!
  ActiveRecord::Base.establish_connection(
    host: 'localhost', 
    adapter: 'postgresql',
    database: 'saas_db', 
    user: 'root', 
    password: 'P.balaji2001'
  )
end