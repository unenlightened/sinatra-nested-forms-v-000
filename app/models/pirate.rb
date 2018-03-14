class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def self.all
    @@all
  end

  def initialize(params)
    @name, @weight, @height = params[:name], params[:weight], params[:height]
    @@all << self
  end
end
