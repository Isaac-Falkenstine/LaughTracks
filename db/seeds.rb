require './app/models/comedian.rb'
require 'bundler'

Bundler.require(:default, :development)

DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|

  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
end

louis = Comedian.create(name: "Louis C.K.", age: 51, city: "New York")
edubz = Comedian.create(name: "Ian Carter", age: 28, city: "Los Angeles")
h3h3 = Comedian.create(name: "Ethan Klein", age: 33, city: "Santa Cruz")
forehead = Comedian.create(name: "John Douglass", age: 30, city: "Los Angeles")
brandon_rod = Comedian.create(name: "Brandon Rogers", age: 30, city: "Los Angeles")
billy_boy = Comedian.create(name: "Bill Burr", age: 51, city: "New York")
bert = Comedian.create(name: "Bert Kreischer", age: 44, city: "Tampa")
tommy = Comedian.create(name: "Tom Segura", age: 39, city: "Cincinnati")
bobby = Comedian.create(name: "Bobby Lee", age: 47, city: "San Diego")
chris = Comedian.create(name: "Chris D'Elia", age: 38, city: "New Jersey")
hannibal = Comedian.create(name: "Hannibal Buress", age: 35, city: "Chicago")
eric = Comedian.create(name: "Eric Andre", age: 35, city: "Los Angeles")
