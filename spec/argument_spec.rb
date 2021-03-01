require './app/argument'

describe Argument do
  context 'get' do
    it 'should raise error if it is not implemented' do
      arg = Argument.new
      expect{ arg.get }.to raise_error("Argument has not implemented this method")
    end
  end
end
