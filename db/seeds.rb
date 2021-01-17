# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
    [
      {
        email: 'rope@movie.com',
        password: 'rope2222',
        username: 'ロペ',
        movie_a: '鬼滅の刃',
        movie_b: 'えんとつ町のプペル',
        movie_c: 'トイストーリー',
        confirmed_at: Time.now
      },
      {
        email: 'akira@movie.com',
        password: 'akira2222',
        username: 'アキラ先輩',
        movie_a: 'ゴッドファーザー',
        movie_b: 'グッドフェローズ',
        movie_c: 'ヒート',
        confirmed_at: Time.now
      },
      {
        email: 'nori@movie.com',
        password: 'nori2222',
        username: 'ノリユキ',
        movie_a: 'ガタカ',
        movie_b: 'ROMA',
        movie_c: 'インセプション',
        confirmed_at: Time.now
      }
    ]
  )