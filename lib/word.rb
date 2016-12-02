class Word

  attr_reader(:word)
  @@word_array = []

  define_method(:initialize) do |attribute|
    @word = attribute.fetch(:word)
    @id = @@word_array.length().+(1)
  end

  define_singleton_method(:all) do
    @@word_array
  end

  define_method(:save) do
    @@word_array.push(self)
  end

  define_singleton_method(:clear) do
    @@word_array = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@word_array.each() do |word|
      if word.id.eql?(id)
        found_word = word
      end
    end
    found_word
  end

end
