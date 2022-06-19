require "date"
require 'active_record'
require "./connect_db.rb"

connect_db!

class Todo < ActiveRecord::Base

  def add_task(h)
    Todo.create!(todo_text: h[:todo_text], due_date: Date.today + h[:due_in_days], completed: false)
 end

  def overdue?
    over = []
    overdue = Todo.where("due_date > ?", Date.today)
    overdue.each {|overdue| over.push(overdue.id)}
    return over
  end 

  def due_later?
    later = []
    due_later = Todo.where("due_date < ?", Date.today)
    due_later.each {|due_later| later.push(due_later.id)}
    return later
  end 

  def due_today?
    today = []
    due_today = Todo.where("due_date = ?", Date.today)
    due_today.each {|due_today| today.push(due_today.id)}
    return today
  end 

  def show_list_uncomplete
    list = Todo.where(completed: false)
    list.each {|x| p "#{x.id} #{x.todo_text} #{x.due_date}"}
  end

  def mark_as_complete(todo_id)
    @id = todo_id
    r = Todo.find(todo_id)
    r.completed = true
    r.save
  end

  def to_displayable_string
    sym = (Todo.find(@id).completed) ? "[X]" : "[ ]"
    "#{sym} #{Todo.find(@id).todo_text}"
  end

  def show_list
    todos = Todo.new
    puts "My Todo-list\n\n"

    puts "Overdue\n"
    ov = todos.overdue?
    ov.each {|o| p "#{(Todo.find(o).completed) ? "[X]" : "[ ]"} #{Todo.find(o).todo_text} #{Todo.find(o).due_date}"}
    puts "\n\n"
  
    puts "Due Today\n"
    to = todos.due_today?
    to.each {|t| p "#{(Todo.find(t).completed) ? "[X]" : "[ ]"} #{Todo.find(t).todo_text}"}
    puts "\n\n"
      
    puts "Due Later\n"
    la = todos.due_later?
    la.each {|l| p "#{(Todo.find(l).completed) ? "[X]" : "[ ]"} #{Todo.find(l).todo_text} #{Todo.find(l).due_date}"}
    puts "\n\n"
  end
end
