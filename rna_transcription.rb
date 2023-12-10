module Complement
  def self.of_dna(dna_seq)
    @rna = ''
    @dna_seq = dna_seq.split("").each do |letter|
      transcribe(letter)
    end
    @rna
  end

  private

  def self.transcribe(letter)
    case letter
    when "G"
      @rna << "C"
    when "C"
      @rna << "G"
    when "T"
      @rna << "A"
    when "A"
      @rna << "U"
    else
      @rna << letter
    end
  end
end

p Complement.of_dna 'ACGTGGTCTTAA'