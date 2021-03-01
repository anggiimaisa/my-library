require './app/command/command'
require './app/model/book_shelf'
require './app/model/shelf'

class BuildLibraryCommand < Command
  def execute(args)
    shelf_size = args['shelf_size'].split('|')
    total_shelf = shelf_size[0].to_i
    total_row = shelf_size[1].to_i
    total_column = shelf_size[2].to_i
    message = Array.new

    generate_shelves(message, total_shelf, total_row, total_column)
  end

  private

  def generate_shelves(message, total_shelf, total_row, total_column)
    for shelf in 1..total_shelf
      for row in 1..total_row
        for column in 1..total_column
          Library.instance.add(Shelf.new(shelf, row, column))
        end
      end
      message << "Shelf #{shelf} with #{total_row} rows and #{total_column} columns is added"
    end
    message
  end

end
