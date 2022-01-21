class Names

  def initialize
    @peoples_names = []
  end

  def add_name(name)
    @peoples_names.push(name)
    "stored!"
  end

  def print_names
    @peoples_names
  end

end



