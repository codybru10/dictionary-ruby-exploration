class Definition

  @@definition_array = []

  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@definition_array.length().+(1)
  end

  define_method(:definition) do
    @definition
  end

  define_singleton_method(:all) do
    @@definition_array
  end

  define_method(:save) do
    @@definition_array.push(self)
  end

  define_singleton_method(:clear) do
    @@definition_array = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_definition = nil
    @@definition_array.each() do |definition|
      if definition.id().eql?(id)
        found_definition = definition
      end
    end
    found_definition
  end



end
