class Spaceship
  attr_accessor :armor
  attr_accessor :name, :load

  def fix
    self.armor = 100
  end

  def initialize(name="A", armor =100,load=0)
    self.armor = armor
    self.name = name
    self.load = load

  end

  def shoot(shipA,dmg)
    if shipA.armor > dmg
      shipA.armor -= dmg
      else
        puts "ship #{shipA.name} was down"
        shipA.armor = 0
    end

  end
end

ship = Spaceship.new
ship.armor = 100
puts ship.name="Enterprise"
puts ship.name

shipB= Spaceship.new
shipB.shoot(ship,100)
puts ship.armor
shipC = Spaceship.new("C",80,1 )
p shipC