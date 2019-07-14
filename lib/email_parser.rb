# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email
  #
  def initialize(string)
    @string = string
  end
  #
  def parse
    array = []

    # array << @string.split(" ")
    # array << @string.split(", ")
    # array << @string.split(",")
    # array << @string.split(" ")

    # array << @string.split(/[,|\s|,\s]+[^\s\b|]/)

    # array << @string.split(/[,|\s][,\s]/)

    # This kind of works
    # array << @string.split(/,/)
    # array << @string.split(/\s/)

    array << @string.split(/,\s/)
    array << @string.split(/\s/)

    array.each do |item|
      x = item.gsub(",","")
      array << x
    end
    # array.reject(&:empty?)

    # array.reject! { |item| item.to_s.empty? }

    array.uniq.flatten!

    # x = @string.split(" ")
    # y = @string.split(",")
    # z = x + y
    # array = z.uniq
  end

end
