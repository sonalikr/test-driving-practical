require "./lib/motivations.rb"

describe "the track_motivation method" do
  
  it "stores motivation ratings" do
    motivation = Motivation.new
    expect(motivation.track_motivation(5)).to eq("stored!")
  end

  it "prints the motivation ratings" do
    motivation = Motivation.new
    motivation.track_motivation(10)
    motivation.track_motivation(12)
    motivation.track_motivation(15)
    motivation.track_motivation(20)

    expect(motivation.print_motivation).to eq([10, 12, 15, 20])
  end

  it "returns the average of motivations" do
    motivation = Motivation.new
    motivation.track_motivation(10)
    motivation.track_motivation(13)
    motivation.track_motivation(16)
    motivation.track_motivation(20)

    expect(motivation.average).to eq(16.33)
  end

  it "returns message when ratings cannot be calculated" do
    motivation = Motivation.new
    motivation.track_motivation(10)
    motivation.track_motivation(10)

    expect{ motivation.average }.to raise_error "can't be calculated"
  end
end