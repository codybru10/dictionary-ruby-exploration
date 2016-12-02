require('rspec')
require('definition')

describe(Definition) do

  describe('#definition') do
    it('returns the definition of a word') do
      test_definition = Definition.new("a greeting")
      expect(test_definition.definition()).to(eq('a greeting'))
    end
  end


end
