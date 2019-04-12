# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
alive = Status.create(label: "Alive")
Status.create(label: "Dead")
Status.create(label: "White Walker")

Character.create([
  {name: "Jon Snow", status_id: alive.id, image_path: "/assets/characters/jon-snow.jpeg"},
  {name: "Sansa Stark", status_id: alive.id, image_path: "/assets/characters/sansa-stark.jpg"},
  {name: "Arya Stark", status_id: alive.id, image_path: "/assets/characters/arya-stark.jpg"},
  {name: "Bran Stark", status_id: alive.id, image_path: "/assets/characters/bran-stark.jpeg"},
  {name: "Cersei Lannister", status_id: alive.id, image_path: "/assets/characters/cersei-lannister.jpg"},
  {name: "Jaime Lannister", status_id: alive.id, image_path: "/assets/characters/jaime-lannister.jpg"},
  {name: "Tyrion Lannister", status_id: alive.id, image_path: "/assets/characters/tyrion-lannister.jpg"},
  {name: "Daeneryes Targaryen", status_id: alive.id, image_path: "/assets/characters/daeneryes-targaryen.jpg"},
  {name: "Yara Greyjoy", status_id: alive.id, image_path: "/assets/characters/yara-greyjoy.jpg"},
  {name: "Theon Greyjoy", status_id: alive.id, image_path: "/assets/characters/theon-greyjoy.jpg"},
  {name: "Euron Greyjoy", status_id: alive.id, image_path: "/assets/characters/euron-greyjoy.jpeg"},
  {name: "Melisandre", status_id: alive.id, image_path: "/assets/characters/melisandre.jpeg"},
  {name: "Jorah Mormont", status_id: alive.id, image_path: "/assets/characters/jorah-mormont.jpeg"},
  {name: "The Hound", status_id: alive.id, image_path: "/assets/characters/the-hound.jpg"},
  {name: "The Mountain", status_id: alive.id, image_path: "/assets/characters/the-mountain.jpg"},
  {name: "Samwell Tarley", status_id: alive.id, image_path: "/assets/characters/samwell-tarley.jpeg"},
  {name: "Gilly", status_id: alive.id, image_path: "/assets/characters/gilly.jpg"},
  {name: "Sam (Small Child)", status_id: alive.id, image_path: "/assets/characters/sam-child.jpg"},
  {name: "Lord Varys", status_id: alive.id, image_path: "/assets/characters/lord-varys.jpg"},
  {name: "Brienne of Tarth", status_id: alive.id, image_path: "/assets/characters/brienne-of-tarth.jpg"},
  {name: "Davos Seaworth", status_id: alive.id, image_path: "/assets/characters/davos-seaworth.jpg"},
  {name: "Bronn", status_id: alive.id, image_path: "/assets/characters/bronn.jpg"},
  {name: "Podrick Payne", status_id: alive.id, image_path: "/assets/characters/podrick-payne.jpg"},
  {name: "Tormund Giantsbane", status_id: alive.id, image_path: "/assets/characters/tormund-giantsbane.jpg"},
  {name: "Grey Worm", status_id: alive.id, image_path: "/assets/characters/grey-worm.jpeg"},
  {name: "Gendry", status_id: alive.id, image_path: "/assets/characters/gendry.jpg"},
  {name: "Beric Dondarrion", status_id: alive.id, image_path: "/assets/characters/beric-dondarrion.jpg"}
])

BonusQuestion.create([
  {label: "Is Daeneryes pregnant? (+1)", answer: "Unknown", point_value: 1},
  {label: "Who kills the Night King? (+2)", answer: "Unknown", point_value: 2},
  {label: "Who holds the Iron Throne at the end? (+4)", answer: "Unknown", point_value: 4}
])
