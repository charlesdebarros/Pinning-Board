# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  email: 'user@test.com', password: 'Password1$', password_confirmation: 'Password1$'
)

Pin.create(
  user_id: 1,
  title: 'Imperatriz Leopoldinense',
  description: 'Tradicional escola do carnaval carioca. Fundada em 03 de Maio de 1959, localizada na Zona da Leopoldina, suburbio carioca.',
  image_file_name: 'blogger-image--954831936.jpg',
  image_content_type: 'image/jpeg'
)
Pin.create(
  user_id: 1,
  title: 'Porto da Pedra',
  description: 'Escola vermelha e branco de São Gonçalo, na região metropolitana do Rio de Janeiro. Fundada em 08 de Março de 1978. Tem o tigre como seu símbolo.',
  image_file_name: 'porto_da_pedra.jpg',
  image_content_type: 'image/jpeg'
)
Pin.create(
  user_id: 1,
  title: 'Unidos do Viradouro',
  description: 'Tradicional escola de Niterói, na região metropolitana do Rio de Janeiro. Fundada em 24 de Junho de 1946. Suas cores são o vermelho e o branco.',
  image_file_name: 'viradouro.jpg',
  image_content_type: 'image/jpeg'
)
