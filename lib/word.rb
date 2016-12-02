class Word

  attr_reader(:word)

  define_method(:initialize) do |attribute|
    @word = attribute.fetch(:word)
  end



end
