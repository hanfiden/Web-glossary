puts "Cleaning database..."

User.destroy_all

admin = User.new(email: 'fidenhan@gmail.com', password: "a9ght8")
admin.save!
