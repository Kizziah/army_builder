class Troop < ActiveRecord::Base
  attr_accessible :name, :points, :squad_id, :weapon, :weapon2
  belongs_to :squad

  WEAPONS = [
    :meltagun,
    :missle_launcher,
    :boltgun
  ]

Points = [
  "hello",
  "goodbye"
]

end
