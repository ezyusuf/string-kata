module StringCalculator

  def self.add(string)
    # string = set_delimiter(string)
    # values = string.split(/[,\n]/)
    # values = string.split(/[#{delimiter}\n]/).map(&:to_i)
    # raise RuntimeError if values.detect { |v| v < 0}
    values = extract_values(string)
    raise RuntimeError if values.detect { |v| v < 0}
    values.reduce(:+) || 0
    # values.map(&:to_i).reduce(:+) || 0
  end

  def self.extract_values(string)
    delimiter = extract_delimiter(string)
    string.split(/[#{delimiter}\n]/).map(&:to_i)
  end

  def self.extract_delimiter(string)
    # delimiter = string =~ /^\/\// ? string[2] : ","
    string =~ /^\/\// ? string[2] : ","
  end

  # def self.set_delimiter(string)
  #   # if string =~ /^\/\//
  #   #   delimiter = string[2]
  #   # end
  #   delimiter = string =~ /^\/\// ? string[2] : ","
  # end

  # def self.add(string)
  #   # 0
  #   # string.to_i
  #   if string.include?(",")
  #     values = string.split(/[,\n]/)
  #     values.map(&:to_i).reduce(:+) || 0
  #     # values.inject(0) { |s,v| s += v.to_i}

  #   else
  #     string == "5" ? 5 : 0
  #   end
  #   # code to be tested goes here...
  # end

  # ...and here when the above becomes too complex.

end
