5.times do |n|
  email = Faker::Email.email
  password = "password"
  name = Faker::Name.name
 User.create!(email: email,
              name: name,
              password: password,
               password_confirmation: password,
               )
end

n = 1
while n <= 5
  Blog.create!(
    image: Rails.root.join("app/aseets/images//akitainu.jpg").open,
    content: 'hoge',
    user_id: n,
  )
  n = n + 1
end
