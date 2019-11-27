# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  :email   => "admin@admin",
  :password  => "123456",
  :password_confirmation => "123456",
  :username => "ADMIN"
)
user.save!

videos = [
  {link: "https://www.youtube.com/watch?v=VcjzHMhBtf0"},
  {link: "https://www.youtube.com/watch?v=n_GFN3a0yj0"},
  {link: "https://www.youtube.com/watch?v=JkK8g6FMEXE"},
  {link: "https://www.youtube.com/watch?v=SRvCvsRp5ho"},
  {link: "https://www.youtube.com/watch?v=Kc71KZG87X4"},
]
videos.each do |video|
  video = Video.new(
    :link  => video[:link],
    :user_id  => 1
  )
  video.save!
end