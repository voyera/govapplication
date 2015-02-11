user = User.new(
    :email                 => "almagedus@hotmail.com",
    :password              => "hgWU8BcM7wFv",
    :password_confirmation => "hgWU8BcM7wFv"
)
user.skip_confirmation!
user.save!

60.times do
  title = Faker::Lorem.sentence(1)
  content = Faker::Lorem.sentence(5)
  user.items.create!(title: title, content: content)
end