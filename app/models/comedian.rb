class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age, :city

  has_many :specials

  def self.assess_params(params = {})
    return all if params.empty? == true
    return filter_by_age(params[:age])   if params[:age]
    return filter_by_name(params[:name]) if params[:name]
  end

  def self.find_specials(params = {})
    comics = assess_params(params)
    comic_ids = comics.pluck(:id)
    specials = Special.where(comedian_id: comic_ids )
  end

  def self.total_specials(params = {})
    find_specials(params).count
  end

  def self.filter_by_age(age)
    where({age: age})
  end

  def self.filter_by_name(name)
    find_by_name(name)
  end

  def self.average_age(params = {})
    comics = assess_params(params)
    comics.average(:age)
  end

  def self.cities(params = {})
    comics = assess_params(params)
    comics.distinct.pluck(:city)
  end
end
