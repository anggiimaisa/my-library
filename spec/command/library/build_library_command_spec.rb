require './app/command/library/build_library_command'

describe BuildLibraryCommand do
  let(:book_shelf) { Array.new }
  let(:total_row) { 1 }
  let(:total_column) { 3 }

  context 'execute' do
    it 'should return success message when the shelf is generated' do
      args = {
        "shelves" => Array.new,
        "shelf_size" => "2|#{total_row}|#{total_column}"
      }
      build_library_command = BuildLibraryCommand.new
      actual = build_library_command.execute(args)
      expectation = ["Shelf 1 with #{total_row} rows and #{total_column} columns is added",
                     "Shelf 2 with #{total_row} rows and #{total_column} columns is added"]
      expect(actual).to eq(expectation)
    end
  end
end
