class Calculator

  def add(string)
    new_array = convert_to_array(string)
    integer_array = convert_elements_to_integers(new_array)
    sum_array(integer_array)
  end

  private

  def convert_to_array(string)
    amended_string = remove_start_newlines(string)
    amended_string.split(detect_delimiter(string))
  end

  def remove_start_newlines(string)
    string.gsub(/\/\/.\n/,"").gsub(/\n/, ",")
  end

  def detect_delimiter(string)
    delimiter = string.scan(/(?<=\/\/).(?=\n)/).join
    delimiter == ""? "," : delimiter
  end

  def convert_elements_to_integers(array)
    array.map(&:to_i)
  end

  def sum_array(array)
    raise_error_if_negatives(array)
    array.reduce(0, :+)
  end

  def raise_error_if_negatives(array)
    negatives = array.select{ |element| element < 0 }
    raise Exception, "negatives not allowed: #{negatives.join(', ')}" if negatives.length > 0
  end

end
