class Calculator

  def add(string)
    raise 'negatives not allowed' if string.include?('-')
    amended_string = default_delimiters(string)
    new_array = convert_to_array(amended_string)
    integer_array = convert_elements_to_integers(new_array)
    sum_array(integer_array)
  end

  private

  def default_delimiters(string)
    string.gsub("\n", ',')
  end

  def convert_to_array(string)
    string.scan(/\w/)
  end

  def convert_elements_to_integers(array)
    array.map(&:to_i)
  end

  def sum_array(array)
    array.reduce(0, :+)
  end

end
