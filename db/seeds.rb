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
  {name: "Jon Snow", status_id: alive.id},
  {name: "Sansa Stark", status_id: alive.id},
  {name: "Arya Stark", status_id: alive.id},
  {name: "Bran Stark", status_id: alive.id},
  {name: "Cersei Lannister", status_id: alive.id},
  {name: "Jaime Lannister", status_id: alive.id},
  {name: "Tyrion Lannister", status_id: alive.id},
  {name: "Daeneryes Targaryen", status_id: alive.id},
  {name: "Yara Greyjoy", status_id: alive.id},
  {name: "Theon Greyjoy", status_id: alive.id},
  {name: "Euron Greyjoy", status_id: alive.id},
  {name: "Melisandre", status_id: alive.id},
  {name: "Jorah Mormont", status_id: alive.id},
  {name: "The Hound", status_id: alive.id},
  {name: "The Mountain", status_id: alive.id},
  {name: "Samwell Tarley", status_id: alive.id},
  {name: "Gilly", status_id: alive.id},
  {name: "Sam (Small Child)", status_id: alive.id},
  {name: "Lord Varys", status_id: alive.id},
  {name: "Brienne of Tarth", status_id: alive.id},
  {name: "Davos Seaworth", status_id: alive.id},
  {name: "Bronn", status_id: alive.id},
  {name: "Podrick Payne", status_id: alive.id},
  {name: "Tormund Giantsbane", status_id: alive.id},
  {name: "Grey Worm", status_id: alive.id},
  {name: "Gendry", status_id: alive.id},
  {name: "Beric Dondarrion", status_id: alive.id}
])

BonusQuestion.create([
  {label: "Is Daeneryes pregnant? (+1)", answer: "Unknown", point_value: 1},
  {label: "Who kills the Night King? (+2)", answer: "Unknown", point_value: 2},
  {label: "Who holds the Iron Throne at the end? (+4)", answer: "Unknown", point_value: 4}
])
