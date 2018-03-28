# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create({email: 'user@test.com', password: 'Password1$', password_confirmation: 'Password1$'})
pin = Pin.create({
  user_id: 1,
  title: 'Imperatriz Leopoldinense',
  description: 'Tradicional escola do carnaval carioca. Fundada em 03 de Maio de 1959, localizada na Zona da Leopoldina, suburbio carioca.',
  image_file_name: 'blogger-image--954831936.jpg',
  image_content_type: 'image/jpeg'
})
