class Calculator

  def add(string)
    new_array = convert_to_array(string)
    integer_array = convert_elements_to_integers(new_array)
    sum_array(integer_array)
  end

  private

  def detect_delimiter(string)
    string.scan(/(?<=\/\/).(?=\n)/).join
  end

  def remove_start(string)
    string.gsub(/\/\/.\n/,"")
  end

  def convert_to_array(string)
    string2 = remove_start(string)
    string2.split(detect_delimiter(string))
  end

  def convert_elements_to_integers(array)
    array.map(&:to_i)
  end

  def sum_array(array)
    raise 'negatives not allowed' if negatives?(array)
    array.reduce(0, :+)
  end

  def negatives?(array)
    array.any?{ |element| element < 0 }
  end

end
