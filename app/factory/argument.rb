class Argument
  def get(param = '')
    raise NotImplementedError, "#{self.class} has not implemented this method"
  end
end
