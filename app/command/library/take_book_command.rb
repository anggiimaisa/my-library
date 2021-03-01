require './app/command/command'

class TakeBookCommand < Command
  def execute(args)
    shelves = args["shelves"]
    slot_id = args["slot_id"]
    adapter = SlotIdToShelfAdapter.new
    shelves.each do |book_shelf|
      if book_shelf.shelf.eql? adapter.parse(slot_id)
        if !book_shelf.book.empty?
          book_shelf.book = Book.new
          return { 'message' => "Slot #{book_shelf.shelf.print} is free",
                   'value' => book_shelf }
        end
      end
    end
    return { 'message' => "Invalid code!",
             'value' => nil }
  end
end