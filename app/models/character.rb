class Character < ActiveRecord::Base
  def generate_filename
    value = false
    randomFileName = rand 100000000000000000000000000000000000000000
    randomFileName = randomFileName.to_s + ".img"
    Character.all.each do |i| value = true if i.image == randomFileName end
    if value
      generate_filename
    else
      return randomFileName
    end
  end
  
  validates :name, presence: true
  validates :str, presence: true, numericality: {:greater_than => 0}
  validates :dex, presence: true, numericality: {:greater_than => 0}
  validates :spd, presence: true, numericality: {:greater_than => 0}
  validates :con, presence: true, numericality: {:greater_than => 0}
  validates :end, presence: true, numericality: {:greater_than => 0}
  validates :min, presence: true, numericality: {:greater_than => 0}
  validates :sol, presence: true, numericality: {:greater_than => 0}

  has_many :items
  belongs_to :user
end
