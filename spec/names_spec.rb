require './lib/names.rb'

describe "the name_stored method"  do

  it "adds people's names" do
    name = Names.new
    expect(name.add_name("John")).to eq("stored!")
  end

  it "returns all stored names of people" do
    name = Names.new
    name.add_name("John")
    name.add_name("Alice")
    name.add_name("Roz")
    name.add_name("Niles")
    
    expect(name.print_names).to eq(["John", "Alice", "Roz", "Niles"])
  end

end