class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def self.all
    @@all
  end

  def initialize(params)
    @name, @type, @booty = params[:name], params[:type], params[:booty]
    @@all << self
  end

  def self.clear
    @@all = []
  end
end
