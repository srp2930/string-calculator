class Calculator
  def add(string)
    integer_array = string.gsub("\n", ',').split(',')
    integer_array.map(&:to_i).reduce(0, :+)
  end
end
