class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  # Method I added to return the number of incomplete tasks
  def number_of_incomplete_tasks
    return incomplete_task_names.length
  end

  # Method I added to delete completed tasks from the list - this appears to work
  def delete_complete_tasks
    @tasks.each do |task|
      if task.complete
        @tasks.delete(task)
      end
    end
    return @tasks
  end

  def sort_by_priority
    @tasks.sort { |task1, task2| task2.priority <=> task1.priority }
  end
end