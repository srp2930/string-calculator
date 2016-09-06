class Calculator
  def add(string)
    integers = string.gsub("\n", ',').split(',')
    integers.map(&:to_i).reduce(0, :+)
  end
end
