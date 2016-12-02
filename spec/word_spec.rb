require('rspec')
require('word')

describe(Word) do

  describe(:word) do
    it('returns the word entered') do
    test_word = Word.new(:word => "hello")
    expect(test_word.word()).to(eq("hello"))
    end
  end


end
