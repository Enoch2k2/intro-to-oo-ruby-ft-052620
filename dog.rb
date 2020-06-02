require 'pry'
class Dog
  attr_accessor :age, :name
  attr_reader :breed

  @@all = []

  def initialize(breed="unknown")
    @breed = breed
    @@all << self
  end

  def bark
    puts "#{name} goes bark!"
  end

  def walk
    puts "#{name} goes out for a walk."
  end

  def self.all
    @@all
  end
end

fido = Dog.new
lassie = Dog.new("Sheep Dog")
kujo = Dog.new("Saint Benard")
snoopy = Dog.new("Beagle")

fido.name = "Fido"
lassie.name = "Lassie"
kujo.name = "Kujo"
snoopy.name = "Snoopy"

fido.age = 3
lassie.age = 7
kujo.age = 4
snoopy.age = 27

binding.pry

Dog.all.each.with_index(1) do |dog, index|
  puts "#{index}. #{dog.name}"
end