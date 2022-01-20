class Motivation
  
  def initialize
    @motivations_ratings = []
  end
    
  def track_motivation(num)
    @motivations_ratings.push(num)
    "stored!"
  end

  def print_motivation
    @motivations_ratings
  end

  def average
    if @motivations_ratings.length > 2
      ((@motivations_ratings[-1] + @motivations_ratings[-2] + @motivations_ratings[-3]).to_f / 3).round(2)
    else
      raise "can't be calculated"
    end
  end 
end

