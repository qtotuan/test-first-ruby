class RPNCalculator
attr_accessor :arr

  def initialize
    @arr = []
  end

  def push(n)
    arr << n
  end

  def plus
    raise "calculator is empty" unless arr.size >= 2
    arr << arr.pop + arr.pop
  end

  def value
    arr[-1]
  end

  def minus
    raise "calculator is empty" unless arr.size >= 2
    second_num = arr.pop
    first_num = arr.pop
    arr << first_num - second_num
  end

  def divide
    raise "calculator is empty" unless arr.size >= 2
    second_num = arr.pop.to_f
    first_num = arr.pop
    arr << first_num / second_num
  end

  def times
    raise "calculator is empty" unless arr.size >= 2
    arr << arr.pop * arr.pop
  end

  def tokens(string)
    string.split(" ").map do |e|
      case e
      when "+"
        :+
      when "-"
        :-
      when "/"
        :/
      when "*"
        :*
      else
        e.to_f
      end
    end
  end

  def evaluate(string)
    commands = tokens(string)
    commands.each do |e|
      case e
      when :+
        plus
      when :-
        minus
      when :/
        divide
      when :*
        times
      else
        push(e)
      end
    end
    value
  end

end
