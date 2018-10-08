class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age, :city

  def self.total_specials(params = {})
    find_specials(params).count
  end
end
