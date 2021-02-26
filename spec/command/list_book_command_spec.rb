require './app/command/list_book_command'

describe ListBookCommand do
  context 'execute' do
    it 'should print list of book' do
      list_book_command = ListBookCommand.new
      list_book_command.execute
    end
  end
end
