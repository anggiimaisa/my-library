require './app/model/shelf'

class SlotIdToShelfAdapter
  def parse(slot_id)
    Shelf.new(slot_id[0..1], slot_id[2..3], slot_id[4..5])
  end
end
