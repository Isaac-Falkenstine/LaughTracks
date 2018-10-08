class Special < ActiveRecord::Base

  validates_presence_of :title, :comedian_id

  belongs_to :comedian

  def self.average_length
    average(:runtime) ? average(:runtime) : 0
  end
end
