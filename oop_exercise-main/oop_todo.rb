require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat"))
list.add_task(Task.new("Take out trash"))
list.add_task(Task.new("Mow the lawn"))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"











# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names
list.tasks[0].toggle_complete!
p list.number_of_incomplete_tasks
p list.tasks[0].define_priority
p list.tasks[1].define_priority
p list.tasks[2].define_priority
p list.sort_by_priority


