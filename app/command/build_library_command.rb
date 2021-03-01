require './app/command'

class BuildLibraryCommand < Command
  def execute(args)
    shelves = args['shelves']
    shelf_size = args['shelf_size'].split('|')
    puts shelf_size
    total_shelf = shelf_size[0]
    total_row = shelf_size[1]
    total_column = shelf_size[2]
    message = Array.new

    generate_shelves(shelves, message, total_shelf, total_row, total_column)
  end

  private

  def generate_shelves(shelves, message, total_shelf, total_row, total_column)
    for shelf in 1..total_shelf
      for row in 1..total_row
        for column in 1..total_column
          shelves << BookShelf.new(Shelf.new(shelf, row, column))
        end
      end
      message << "Shelf #{shelf} with #{total_row} rows and #{total_column} columns is added"
    end
    message
  end

end
