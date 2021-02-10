
class Book
  attr_accessor :isbn, :title, :author

  def initialize(isbn = '', title = '', author = '')
    @isbn = isbn
    @title = title
    @author = author
  end

  def valid?
    return false if !isbn_valid?
    return false if !title_valid?
    return false if !author_valid?

    true
  end

  private

  def isbn_valid?
    return false if @isbn.nil?
    return false if @isbn.eql? ''

    true
  end

  def title_valid?
    return false if @title.nil?
    return false if @title.eql? ''

    true
  end

  def author_valid?
    return false if @author.nil?
    return false if @author.eql? ''

    true
  end
end
