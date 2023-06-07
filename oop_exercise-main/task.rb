class Task
  
  def initialize(name)
    @name = name
    @complete = false
    @priority = 1
  end

  def name
    return @name
  end

  def priority
    return @priority
  end

  def complete
    return @complete
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    if @complete
      @complete = false
    else
      @complete = true
    end
  end

  def define_priority
    puts "What level priority would you like to assign to this task? (1 - 10)"
    @priority = gets.chomp.to_i
  end

  def priority
    return @priority
  end
end