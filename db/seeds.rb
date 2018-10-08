require './app/models/comedian.rb'
require './app/models/special'
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

specials = [
  {title: "Louis C.K. 2017", runtime: 74, image: "https://m.media-amazon.com/images/M/MV5BOGYwMmVlMWUtZDE2My00MzMyLTk5MTQtZDdmM2U5YWQwZjM1XkEyXkFqcGdeQXVyMjExNDAyOTU@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 1},
  {title: "Louis C.K.: Shameless", runtime: 56, image: "https://m.media-amazon.com/images/M/MV5BMjE4NjE1ODI5Ml5BMl5BanBnXkFtZTcwMTgxNjc0MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 1},
  {title: "Louis C.K.: Live at the Comedy Store", runtime: 66, image: "https://m.media-amazon.com/images/M/MV5BODJlMmIyNjEtZDQ0ZS00MGIyLWEyZmYtOTQyYTQyMWJkODhmXkEyXkFqcGdeQXVyMjQ0ODQ0MzQ@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 1},
  {title: "iDubbbz: Content Cop", runtime: 79, image: "https://orig00.deviantart.net/706c/f/2017/283/1/9/warholidubbbz_by_raimeylofficial-dbq4wcs.png", comedian_id: 2},
  {title: "iDubbbz: Kickstarter Crap", runtime: 80, image: "https://i.ytimg.com/vi/jfcVgz7gY6o/hqdefault.jpg", comedian_id: 2},
  {title: "iDubbbz: Bad Unboxing", runtime: 65, image: "https://i.ytimg.com/vi/5v2-DBw3iZs/hqdefault.jpg", comedian_id: 2},
  {title: "H3H3 Productions: Meme Busters", runtime: 75, image: "https://i.ytimg.com/vi/BZ0jMJ4jEYE/0.jpg", comedian_id: 3},
  {title: "H3H3 Productions: Vape Nation", runtime: 55, image: "https://ih1.redbubble.net/image.491827267.5301/flat,550x550,075,f.u3.jpg", comedian_id: 3},
  {title: "H3H3 Productions: The TLC Experince", runtime: 62, image: "https://i.ytimg.com/vi/WXEdJX78L0I/maxresdefault.jpg", comedian_id: 3},
  {title: "Jacksfilms: YIAY", runtime: 95, image: "http://newmediarockstars.com/wp-content/uploads/2015/03/Screen-Shot-2015-03-20-at-1.53.30-PM.png", comedian_id: 4},
  {title: "Jacksfilms: YGS", runtime: 67, image: "https://t2.genius.com/unsafe/220x220/https%3A%2F%2Fimages.genius.com%2F811af63a88b066ff261f9c20a6d4cbab.701x701x1.jpg", comedian_id: 4},
  {title: "Jacksfilms: Alexander Hamilton", runtime: 105, image: "https://i.redd.it/s79j3ahlmaa01.jpg", comedian_id: 4},
  {title: "Brandon Rogers: Sam & Stuff", runtime: 60, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbf56ujeIkWeJxaOP0DjnmnEq7qPYnwVkUgamwvK8Sjgh7U9ul", comedian_id: 5},
  {title: "Brandon Rogers: Grandpa HATES life", runtime: 49, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-exava826d2m6P3900I1xATjvH9DMq57lCF9xuTOu09EX1iZ4Fg", comedian_id: 5},
  {title: "Brandon Rogers: A Day in the Park", runtime: 60, image: "https://i.ytimg.com/vi/4xX1pMn8LvA/hqdefault.jpg", comedian_id: 5},
  {title: "Bill Burr: Emotionally Unavailable", runtime: 60, image: "https://images-na.ssl-images-amazon.com/images/I/510bo6YKFUL._SY450_.jpg", comedian_id: 6},
  {title: "Bill Burr: Why Do I Do This?", runtime: 60, image: "https://images-na.ssl-images-amazon.com/images/I/51sVCO-m2kL.jpg", comedian_id: 6},
  {title: "Bill Burr: Walk Your Way Out", runtime: 60, image: "https://occ-0-999-444.1.nflxso.net/art/53287/65ee440ba92175d94dfc163f1904ab862e653287.jpg", comedian_id: 6},
  {title: "Bert Kreischer: Comfortably Dumb", runtime: 60, image: "https://images-na.ssl-images-amazon.com/images/I/81Zxxp5-xCL._SY445_.jpg", comedian_id: 7},
  {title: "Bert Kreischer: Secret Time", runtime: 43, image: "https://static1.squarespace.com/static/59ba124b6f4ca36b7dc3873c/t/5b7f0857575d1f9d10b3db29/1535147622904/Secret+Time+2.jpg", comedian_id: 7},
  {title: "Bert Kreischer: The Machine", runtime: 60, image: "https://m.media-amazon.com/images/M/MV5BN2U5ZTk3OWUtNzBmOC00MjkzLWFmZWQtNTQyNWEyYTFmOWRlXkEyXkFqcGdeQXVyMjI2OTg4ODA@._V1_.jpg", comedian_id: 7},
  {title: "Tom Segura: Thrilled", runtime: 96, image: "https://images-na.ssl-images-amazon.com/images/I/51sgW%2Bj-LpL._SS500.jpg", comedian_id: 8},
  {title: "Tom Segura: Completely Normal", runtime: 125, image: "https://occ-0-999-444.1.nflxso.net/art/5530b/cbe40f31a3f6908b4accfd5ed2a8c1e378b5530b.jpg", comedian_id: 8},
  {title: "Tom Segura: Disgraceful", runtime: 92, image: "https://m.media-amazon.com/images/M/MV5BMGUyNTBiZjktMjk5Ni00Yzk3LTlkZTUtY2FiOTJiOGRhZWY3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_UY268_CR3,0,182,268_AL_.jpg", comedian_id: 8},
  {title: "Bobby Lee: Tiger Belly", runtime: 73, image: "https://i.imgur.com/ujIm9Xc.jpg", comedian_id: 9},
  {title: "Bobby Lee: Kims of Comedy", runtime: 90, image: "https://images-na.ssl-images-amazon.com/images/I/51e1vjNVNtL._SS500.jpg", comedian_id: 9},
  {title: "Chris D'Elia: Such is Life", runtime: 70, image: "https://images2.laweekly.com/imager/delia-smith-on-the-such-is-life/u/original/4171322/chankkkkkk.jpg", comedian_id: 10},
  {title: "Chris D'Elia: Congratulations", runtime: 76, image: "http://static.libsyn.com/p/assets/a/3/b/8/a3b8ffc07c7e33bb/congratulations-lockup-candidate1.jpg", comedian_id: 10},
  {title: "Chris D'Elia: White Male Black Comic", runtime: 76, image: "https://comedycentral.mtvnimages.com/images/ccstandup/CD_White_Male_1920x1080.jpg?quality=0.85&width=664&height=374&crop=true", comedian_id: 10},
  {title: "Hannibal Buress: My Name is Hannibal ", runtime: 59, image: "https://i.scdn.co/image/1ad7f26e6320922a2f7f79b928a5096ba905ce3c", comedian_id: 11},
  {title: "Hannibal Buress: Live from Chicago", runtime: 54, image: "https://images-na.ssl-images-amazon.com/images/I/71KTDRQ0BjL._SY445_.jpg", comedian_id: 11},
  {title: "Hannibal Buress: Comedy Camisado", runtime: 54, image: "https://m.media-amazon.com/images/M/MV5BNDQ0ZDA3NTQtNzI3NC00Y2NiLWI0ZTctN2RjNDYxNWEyODY4XkEyXkFqcGdeQXVyNTQwMDk4NDM@._V1_.jpg", comedian_id: 11},
  {title: "Eric Andre: The Eric Andre Show", runtime: 60, image: "https://static.spin.com/files/140320-ERIC-ANDRE-SHOW-FREE-640x426.jpg", comedian_id: 12},
  {title: "Eric Andre: Does Paris", runtime: 60, image: "http://www.konbini.com/us/files/2018/01/eric-andre-2.jpg", comedian_id: 12}
]

specials.each do |s|
  Special.create(s)
end
