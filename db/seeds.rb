5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
users = User.all

25.times do
  Wiki.create!(
    user: users.sample,
    title: Faker::Company.buzzword,
    body: Faker::Company.bs,
    private: false
  )
end
wikis = Wiki.all

member = User.create!(
  email:    'standard@blocipedia.com',
  password: 'password',
  role: 'standard'
)

member = User.create!(
  email:    'premium@blocipedia.com',
  password: 'password',
  role: 'premium'
)

member = User.create!(
  email:    'admin@blocipedia.com',
  password: 'password',
  role: 'admin'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
