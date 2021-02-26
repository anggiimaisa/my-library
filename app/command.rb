class Command
  def execute(args = '')
    raise NotImplementedError, "#{self.class} has not implemented this method"
  end
end