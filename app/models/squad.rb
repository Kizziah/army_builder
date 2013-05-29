class Squad < ActiveRecord::Base
  attr_accessible :army_id, :name, :points, :size, :troops_attributes
  belongs_to :army
  has_many :troops
  accepts_nested_attributes_for :troops, allow_destroy: true
  # validates_presence_of :name

  TYPES = {
    havoc: "Havoc",
    cultist: "Cultists",
    korne_bezerker: "Korne Bezerker",
    marine: "Marine"
  }

  EXTRA_HAVOC = 13
  EXTRA_CULTIST = 4
  EXTRA_BEZERKER = 19


    WEAPONS = [
    :meltagun,
    :missle_launcher,
    :boltgun
  ]


  def define_base_squad
    if self.name == "havoc"
      self.update_attribute(:size, 5)
      self.update_attribute(:points, 75)

    end

    if self.name == "cultist"
      self.update_attribute(:size, 10)
      self.update_attribute(:points, 50)
      self.size.times { self.troops.build }
    end

    if self.name == "marine"
      self.update_attribute(:size, 5)
      self.update_attribute(:points, 75)
    end

  end



  private

end