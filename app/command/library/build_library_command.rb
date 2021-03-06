require './app/command/command'
require './app/model/book_shelf'
require './app/model/shelf'

class BuildLibraryCommand < Command
  def execute(args)
    shelf_size = args['shelf_size'].split('|')
    total_shelf = shelf_size[0].to_i
    total_row = shelf_size[1].to_i
    total_column = shelf_size[2].to_i

    generate_shelves(total_shelf, total_row, total_column)
  end

  private

  def generate_shelves(total_shelf, total_row, total_column)
    message = Array.new
    shelf_size = Shelf.new(total_shelf, total_row, total_column)
    if shelf_size.valid?
      (1..total_shelf).each { |shelf|
        (1..total_row).each { |row|
          (1..total_column).each { |column|
            Library.instance.add(Shelf.new(shelf, row, column))
          }
        }
        message << "Shelf #{shelf} with #{total_row} rows and #{total_column} columns is added"
      }
      return {
        'message' => message,
        'status' => true
      }
    end
    {
      'message' => "Library size cannot more than 99 and less than 1",
      'status' => false
    }
  end

end
