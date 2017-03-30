n = 4
while n <= 17
  Topic.create(
    title: "test",
    user_id: n
  )
  n = n + 1
end
