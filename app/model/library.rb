class Library
  attr_reader :shelves

  def initialize
    @shelves = Array.new
  end

  @@instance = Library.new

  def self.instance
    @@instance
  end

  private_class_method :new

end
