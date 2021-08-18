User.create!(email: ENV['EMAIL'],
            password: ENV['PASSWORD'],
            password_confirmation: ENV['PASSWORD'],
            admin: true)