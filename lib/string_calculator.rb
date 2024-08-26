class StringCalculator
  def self.add(input_str)
    return 0 if input_str.empty?
    original_delimiter = ","
    if input_str.start_with?("//")
      str =  input_str.split("\n")
      input_str = str.last.gsub(str.first[2], original_delimiter)
      input_str = input_str.gsub(str.first, "")
    end
    input_str = input_str.gsub("\n", original_delimiter)
    input_array = input_str.split(',').map(&:to_i)
    input_array.sum

  end
end