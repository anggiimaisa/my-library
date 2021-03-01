class Book
  attr_reader :isbn, :title, :authors

  def initialize(isbn = '', title = '', authors = [])
    @isbn = isbn
    @title = title
    @authors = authors
  end

  def valid?
    return false unless isbn_valid?
    return false unless title_valid?
    return false unless author_valid?

    true
  end

  def empty?
    return false if isbn_valid?
    return false if title_valid?
    return false if author_valid?

    true
  end

  def print
    "#{@isbn} | #{@title} | #{@authors.join(', ')}"
  end

  def include_title?(book_title)
    @title.include? book_title
  end

  def include_author?(book_author)
    @authors.any? { |author| author.include? book_author }
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
    return false if @authors.nil?
    return false if @authors.empty?

    true
  end
end
