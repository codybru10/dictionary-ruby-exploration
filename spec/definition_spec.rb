require('rspec')
require('definition')

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe('#definition') do
    it('returns the definition of a word') do
      test_definition = Definition.new("a greeting")
      expect(test_definition.definition()).to(eq('a greeting'))
    end
  end

  describe('.all') do
    it('returns an empty array') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves definition to array') do
      test_definition = Definition.new("a greeting")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it('clears definition array') do
      test_definition = Definition.new("a greeting").save()
      test_definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('assigns an ID to a definition') do
      test_definition = Definition.new("a greeting")
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds a definition by its unique ID') do
      test_definition = Definition.new("a greeting")
      test_definition.save()
      test_definition2 = Definition.new("a goodbye")
      test_definition2.save()
      expect(Definition.find(test_definition.id())).to(eq(test_definition))
    end
  end



end
