class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @word_count = {}
    sentence_arr.each do |word|
      if @word_count.include? word
        @word_count[word] += 1
      else
        @word_count[word] = 1
      end
    end
    @word_count
  end

  private

  attr_accessor :phrase

  def sentence_arr
    @sentence_arr ||= sentence.split(' ')
  end

  def sentence
    phrase.downcase
          .gsub(/[^a-z0-9' ]/, ' ')
          .strip
          .gsub(/(^'|'$|' | ')/, ' ')
          .gsub(/ +/, ' ')
  end

end

phrase = Phrase.new("'First: don't laugh. Then: don't cry. You're getting it.'")
p phrase.word_count

