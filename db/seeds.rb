n = 1

while n <= 20
  name = Faker::Pokemon.name
  email = Faker::Internet.email
  password = Faker::Internet.password
  uid = SecureRandom.uuid

  User.create(
    name: name,
    email: email,
    password: password,
    uid: uid
  )
  n = n + 1
end
