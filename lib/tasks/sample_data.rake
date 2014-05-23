namespace :db do
  desc "Fill database with sample data"
  # task populate: :environment do
  #   User.create!(name: "Example User",
  #                email: "example@railstutorial.org",
  #                password: "foobar",
  #                password_confirmation: "foobar",
  #                admin: true)
  #   99.times do |n|
  #     name  = Faker::Name.name
  #     email = "example-#{n+1}@railstutorial.org"
  #     password  = "password"
  #     User.create!(name: name,
  #                  email: email,
  #                  password: password,
  #                  password_confirmation: password)
  #   end
  # end

   task populate: :environment do
    User.create!(name: "Alejandro Guerrero",
                 email: "iknight93@gmail.com",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)

    10.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    50.times do |n|
      name = Faker::Name.first_name
      lastname = Faker::Name.last_name
      age = Faker::Number.number(2)
      email = "example-#{n+1}@clients.org"
      idnumber = Faker::Number.number(10)
      Client.create!(name: name,
                   lastname: lastname,
                   age: age,
                   email: email,
                   idnumber: idnumber)

    end


    # 20.times do |n|
    #   requested_id = 1 + rand(40)
    #   requester_id = 1 + rand(40)
    #   details = Faker::Lorem.sentences(4)
    #   Request.create!(requester_id: requester_id,
    #                requested_id: requested_id,
    #                details: details)
    # end

    
  end

end
