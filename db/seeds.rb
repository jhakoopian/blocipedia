25.times do
  Wiki.create!(
    title: Faker::Company.buzzword,
    body: Faker::Company.bs
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
