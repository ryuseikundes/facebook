n = 4
y = 131
while (n <= 20) && (y <=147)
  Comment.create(
    content: "test",
    user_id: n,
    topic_id: y
)
  n = n + 1
  y = y + 1
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
