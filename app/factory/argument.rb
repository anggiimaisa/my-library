class Argument
  def get
    raise NotImplementedError, "#{self.class} has not implemented this method"
  end
end
