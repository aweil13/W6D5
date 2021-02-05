# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('cats')

Cat.create(birth_date: '2015/01/20', color: 'brown', name: 'Whiskers', sex: 'M', description: 'im a lovely cat')

Cat.create(birth_date: '2005/01/20', color: 'pink', name: 'David', sex: 'F', description: 'im a adorable cat')


Cat.create(birth_date: '2000/01/20', color: 'grey', name: 'Rich', sex: 'M', description: 'im a fkn cat')


Cat.create(birth_date: '2000/11/20', color: 'black', name: 'Valerie', sex: 'M', description: 'im a cute cat')


Cat.create(birth_date: '2010/02/01', color: 'white', name: 'Dane', sex: 'F', description: 'blabla')