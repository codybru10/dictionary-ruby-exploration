require('rspec')
require('word')

describe(Word) do
  before() do
  Word.clear()
end

  describe('#word') do
    it('returns the word entered') do
    test_word = Word.new(:word => "hello")
    expect(test_word.word()).to(eq("hello"))
    end
  end

  describe('.all') do
    it('returns an empty array') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('add a word to the word array') do
      test_word = Word.new(:word => "hello")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('clears word array') do
      test_word = Word.new(:word => "hello").save()
      test_word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('create a unique ID for each word') do
      test_word = Word.new(:word => "hello")
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds a words unique ID in an array') do
      test_word = Word.new(:word => "hello")
      test_word.save()
      test_word2 = Word.new(:word => "hello")
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))

    end
  end




end
