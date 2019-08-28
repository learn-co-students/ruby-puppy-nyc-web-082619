# Add your code here

require 'pry'


class Dog 
  attr_reader :name, :save  
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.save
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    @@all = []
  end 
  
  def self.print_all
    names = []
    @@all.each do |value|
      names << value.name
    end
    puts names
  end
  
  def save
    @@all << self
  end
  
end

#binding.pry 