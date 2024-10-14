module Acronym
  def self.abbreviate(phrase)
    @abbreviate = ''
    phrase.gsub('-', ' ').gsub(/ +/, ' ').upcase.split(' ').each do |word|
      @abbreviate << word[0]
    end
    @abbreviate
  end
end

puts Acronym.abbreviate('hello   -  world')