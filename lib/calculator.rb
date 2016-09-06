class Calculator

  def add(string)
    raise 'negatives not allowed' if string.include?('-')
    amended_string = default_delimiters(string)
    new_array = change_to_array(amended_string)
    sum_array(new_array)
  end

  private

  def change_to_array(string)
    string.scan(/\w/)
  end

  def default_delimiters(string)
    string.gsub("\n", ',')
  end

  def sum_array(array)
    array.map(&:to_i).reduce(0, :+)
  end

end
