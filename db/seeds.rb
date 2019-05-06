User.destroy_all
Post.destroy_all

puts "--> Database erased."
puts "--> Database reconstruction in progress..."

useradmin = User.new(
  pseudo: 'Admin',
  email: 'admin@test.fr',
  password: 'test123',
  admin: true,
)
useradmin.save!

posttest = Post.new(
  titre: 'Titre',
  titre_secondaire: 'Titre secondaire',
  description: 'Post description',
  image: 'image',
  user: useradmin,
)

posttest2 = Post.new(
  titre: 'Titre2',
  titre_secondaire: 'Titre secondaire2',
  description: 'Post description2',
  image: 'image',
  user: useradmin,
)

posttest.save!
posttest2.save!

puts "--> Admin user created!"
puts "--> Post test created!"
