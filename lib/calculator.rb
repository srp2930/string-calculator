class Calculator

  def add(string)
    raise 'negatives not allowed' if string.include?('-')
    new_array = convert_to_array(string)
    integer_array = convert_elements_to_integers(new_array)
    # raise 'negatives not allowed' if integer_array.includes?
    sum_array(integer_array)
  end

  private

  def detect_delimiter(string)
    string.scan(/(?<=\/\/).(?=\n)/)
  end

  def convert_to_array(string)
    string.scan(/\w+/)
  end

  def convert_elements_to_integers(array)
    array.map(&:to_i)
  end

  def sum_array(array)
    array.reduce(0, :+)
  end

end
