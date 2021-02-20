class Shelf
  attr_reader :shelf_id, :row_id, :column_id

  def initialize(shelf_id, row_id, column_id)
    @shelf_id = shelf_id
    @row_id = row_id
    @column_id = column_id
  end

  def valid?
    return false unless shelf_id_valid?
    return false unless row_id_valid?
    return false unless column_id_valid?

    true
  end

  def print
    shelf_id = convert_to_str(@shelf_id)
    row_id = convert_to_str(@row_id)
    column_id = convert_to_str(@column_id)
    "#{shelf_id}#{row_id}#{column_id}"
  end

  private
  
  def shelf_id_valid?
    return false if @shelf_id.nil?
    return false if @shelf_id.eql? ''
    return false if @shelf_id.to_i > 99

    true
  end

  def row_id_valid?
    return false if @row_id.nil?
    return false if @row_id.eql? ''
    return false if @row_id.to_i > 99

    true
  end

  def column_id_valid?
    return false if @column_id.nil?
    return false if @column_id.eql? ''
    return false if @column_id.to_i > 99

    true
  end

  def convert_to_str(num)
    if num.to_i < 10
      return "0#{num}"
    end
    num
  end

end