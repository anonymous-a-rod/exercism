# sentence = "this is %{name}, he's %{age} years old"
# puts sentence % {name: 'Aaron', age: 29, other: 'misc'}

# name = 'Aaron'
# sentence = %q{"not interpolated #{name}"}
# puts sentence

# Hash prepended on curly braces allows for string interpolation when nested inside of double quotation marks.

# Wrapping %q{} around an existing string prevents any interpolation side

# %{} syntax allows for substituting values from a hash

# centered = p 'efwefd'.center(20)
# text = p centered.strip

# puts text[0]
# puts text[-1]

# puts text[0, 2]

# p "hello world".split(" ")

# p "noob".gsub("o", "0")

# p "ruby really rocks".gsub(/[aeiou]/,'')

class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    line.gsub(log_level_regex, '').strip
  end

  def log_level
    formatted_log_level.gsub(/[\[\]:]/, '').downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end

  private

  attr_accessor :line

  def formatted_log_level
    line.match(log_level_regex).to_s
  end

  def log_level_regex
    @log_level_regex ||= /\[.*\]:/
  end
end

puts LogLineParser.new('[ERROR]: Invalid operation').message
puts LogLineParser.new('[INFO]: Invalid operation').message
puts LogLineParser.new('[WARNING]: Invalid operation').message

puts LogLineParser.new('[ERROR]: Invalid operation').log_level
puts LogLineParser.new('[INFO]: Invalid operation').log_level
puts LogLineParser.new('[WARNING]: Invalid operation').log_level

puts LogLineParser.new('[INFO]: Operation completed').reformat