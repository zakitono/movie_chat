# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  user1 = User.new(
    email: 'rope@movie.com',
    password: 'rope2222',
    username: 'ロペ',
    movie_a: '鬼滅の刃',
    movie_b: 'えんとつ町のプペル',
    movie_c: 'トイストーリー'
  )
  user1.skip_confirmation!
  user1.save

  user2 = User.new(
    email: 'akira@movie.com',
    password: 'akira2222',
    username: 'アキラ先輩',
    movie_a: 'ゴッドファーザー',
    movie_b: 'グッドフェローズ',
    movie_c: 'ヒート'
)
  user2.skip_confirmation!
  user2.save

  user3 = User.new(
    email: 'nori@movie.com',
    password: 'nori2222',
    username: 'ノリユキ',
    movie_a: 'ガタカ',
    movie_b: 'ROMA',
    movie_c: 'インセプション'
)
  user3.skip_confirmation!
  user3.save