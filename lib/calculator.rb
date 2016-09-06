class Calculator
  def add(string)
    integers = string.split(',')
    integers.map(&:to_i).reduce(0, :+)
  end
end
