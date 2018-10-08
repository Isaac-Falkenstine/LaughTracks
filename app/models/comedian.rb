class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age, :city

  def assess_params(params = {})
    return all if params.empty? == true
    return filter_by_age(params[:age])   if params[:age]
    return filter_by_name(params[:name]) if params[:name]
  end

  def find_specials(params = {})
    comics = assess_params(params)
    comic_ids = comics.pluck(:id)
    specials = Special.where(comedian_id: comic_ids )
  end

  def total_specials(params = {})
    find_specials(params).count
  end

  def filter_by_age(age)
    where({age: age})
  end

  def filter_by_name(name)
    find_by_name(name)
  end
end
