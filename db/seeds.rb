# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
alive = CharacterStatus.create(status_label: "Alive")
CharacterStatus.create(status_label: "Dead")
CharacterStatus.create(status_label: "White Walker")

Character.create([
  {name: "Jon Snow", character_status_id: alive.id},
  {name: "Sansa Stark", character_status_id: alive.id},
  {name: "Arya Stark", character_status_id: alive.id},
  {name: "Bran Stark", character_status_id: alive.id},
  {name: "Cersei Lannister", character_status_id: alive.id},
  {name: "Jaime Lannister", character_status_id: alive.id},
  {name: "Tyrion Lannister", character_status_id: alive.id},
  {name: "Daeneryes Targaryen", character_status_id: alive.id},
  {name: "Yara Greyjoy", character_status_id: alive.id},
  {name: "Theon Greyjoy", character_status_id: alive.id},
  {name: "Euron Greyjoy", character_status_id: alive.id},
  {name: "Melisandre", character_status_id: alive.id},
  {name: "Jorah Mormont", character_status_id: alive.id},
  {name: "The Hound", character_status_id: alive.id},
  {name: "The Mountain", character_status_id: alive.id},
  {name: "Samwell Tarley", character_status_id: alive.id},
  {name: "Gilly", character_status_id: alive.id},
  {name: "Sam (Small Child)", character_status_id: alive.id},
  {name: "Lord Varys", character_status_id: alive.id},
  {name: "Brienne of Tarth", character_status_id: alive.id},
  {name: "Davos Seaworth", character_status_id: alive.id},
  {name: "Bronn", character_status_id: alive.id},
  {name: "Podrick Payne", character_status_id: alive.id},
  {name: "Tormund Giantsbane", character_status_id: alive.id},
  {name: "Grey Worm", character_status_id: alive.id},
  {name: "Gendry", character_status_id: alive.id},
  {name: "Beric Dondarrion", character_status_id: alive.id},
])

BonusQuestion.create([
  {label: "Is Daeneryes pregnant?", correct_answer: "False"},
  {label: "Who kills the Night King?", correct_answer: "Unknown"},
  {label: "Who holds the Iron Throne at the end?", correct_answer: "Unknown"}
])
