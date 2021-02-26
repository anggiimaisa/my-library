require './app/command'

describe Command do
  context 'execute' do
    it 'should raise error if it is not implemented' do
      command = Command.new
      expect{command.execute('')}.to raise_error("Command has not implemented this method")
    end
  end
end
