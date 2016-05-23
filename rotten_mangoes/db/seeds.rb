# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  # create_table "movies", force: true do |t|
  #   t.string   "title"
  #   t.string   "director"
  #   t.integer  "runtime_in_minutes"
  #   t.text     "description"
  #   t.string   "poster_image_url"
  #   t.datetime "release_date"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end

Movie.create!(
  title: "Angry Birds",
  director: "Klay Caytis",
  runtime_in_minutes: 95,
  description: "In the 3D animated comedy, The Angry Birds Movie, we'll finally find out why the birds are so angry. The movie takes us to an island populated entirely by happy, flightless birds--or almost entirely. In this paradise, Red (Jason Sudeikis), a bird with a temper problem, speedy Chuck (Josh Gad), and the volatile Bomb (Danny McBride) have always been outsiders. But when the island is visited by mysterious green piggies, it's up to these unlikely outcasts to figure out what the pigs are up to.",
  poster_image_url: "https://resizing.flixster.com/lBuDecJiJhHjv4VRr99r2x6D-D4=/180x267/v1.bTsxMTg0MjIwMztqOzE2OTcwOzIwNDg7MjAyNTszMDAw",
  release_date: "2016-05-20"
)

Movie.create!(
  title: "Neighbors 2",
  director: "Nicholas Stoller",
  runtime_in_minutes: 92,
  description: "Young parents Mac (Seth Rogen and Kelly Radnor (Rose Byrne) find their troubles are far from over in this sequel co-starring Zac Efron.",
  poster_image_url: "https://resizing.flixster.com/oOoUOzxW0zd5PnL2bI1sHb6cDYw=/171x270/v1.bTsxMTg5MDkzNDtqOzE3MDExOzIwNDg7MTIxMzsxOTIw",
  release_date: "2016-05-20"
)

Movie.create!(
  title: "The Jungle Book",
  director: "Jon Favreau",
  runtime_in_minutes: 111,
  description: "In this reimagining of the classic collection of stories by Rudyard Kipling, director Jon Favreau uses visually stunning CGI to create the community of animals surrounding Mowgli (Neel Sethi), a human boy adopted by a pack of wolves. The appearance of a villainous tiger named Shere Khan (voiced byIdris Elba) forces Mowgli's guardian, the panther Bagheera (Ben Kingsley), to shepherd the child to safety in the 'man village'. Along the way, the boy meets an affable, lazy bear named Baloo (Bill Murray), as well as a snake with hypnotic powers (Scarlett Johansson) and an orangutan (Christopher Walken) who wants to harness the power of fire. Lupita Nyong'o, Giancarlo Esposito, and Garry Shandling also lend their voices to this adventure tale.",
  poster_image_url: "https://resizing.flixster.com/0B83oPH6vTvrR1CzVTmXz11BXJE=/180x266/v1.bTsxMTY1Mzk2MztqOzE3MDk3OzIwNDg7MTAxNDsxNTAw",
  release_date: "2016-04-15"
)

Movie.create!(
  title: "Captain America: Civil War",
  director: "Anthony Russo",
  runtime_in_minutes: 146,
  description: "Marvel's Captain America: Civil War finds Steve Rogers leading the newly formed team of Avengers in their continued efforts to safeguard humanity. But after another incident involving the Avengers results in collateral damage, political pressure mounts to install a system of accountability, headed by a governing body to oversee and direct the team. The new status quo fractures the Avengers, resulting in two camps-one led by Steve Rogers and his desire for the Avengers to remain free to defend humanity without government interference, and the other following Tony Stark's surprising decision to support government oversight and accountability.",
  poster_image_url: "https://resizing.flixster.com/iC03QWgsqAzaFDCHnsc1jRJvCls=/180x266/v1.bTsxMTY5MDA3MDtwOzE2OTgwOzIwNDg7NDg4OzcyMA",
  release_date: "2016-05-06"
)
