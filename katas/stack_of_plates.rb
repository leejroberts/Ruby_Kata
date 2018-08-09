require "pry"

class Stack
  def initialize(value=nil)
    @values = []
    if value
      @values << value
    end
  end

  def push(value)
    @values << value
  end

  def pop
    @values.pop
  end

  def empty?
    @values.empty?
  end
end

class PlateStack
  def initialize(value=nil, stack_max=10)
    @stack_arr = [Stack.new(value)]
    @stack_max = stack_max
    @stack_count = 0
  end


  def push(value)
    if @stack_count == (@stack_max * @stack_arr.length)
      @stack_arr << Stack.new(value)
    else
      @stack_arr.last.push(value)
    end
    @stack_count += 1
  end

  def pop
    value = @stack_arr.last.pop
    if @stack_arr.last.empty?
      @stack_arr.pop
    end
    @stack_count -= 1
    value
  end

  def stack_count
    @stack_arr.length
  end
end
