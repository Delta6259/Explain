puts 'Cleaning database...'
User.destroy_all
Article.destroy_all
Category.destroy_all
Upvote.destroy_all

puts 'Creating users...'

user1 = User.create!(
  email: "gtrupin@gmail.com",
  password:"azerty",
  password_confirmation:"azerty"
  )
user2 = User.create!(
  email: "aubry.prieur@gmail.com",
  password:"qsdfgh",
  password_confirmation: "qsdfgh"
  )
puts 'Creating articles...'

category1 = Category.create!(
  name: "Sport"
  )

category2 = Category.create!(
  name: "Actualité"
  )

puts 'Creating upvotes...'

upvote1 = Upvote.create!(
  vote: 33
  )

upvote2 = Upvote.create!(
  vote: 12
  )

article1 = Article.create!(
  title: "Le PSG, entre l'attirance et la destruction",
  description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
  photo: "http://lorempixel.com/400/200/sports",
  user: user1,
  category: category1,
  upvote: upvote1
  )

article2 = Article.create!(
  title: "Pourquoi tant de mal dans l'actualité ?",
  description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
  photo: "http://lorempixel.com/400/200",
  user: user2,
  category: category2,
  upvote: upvote2
  )
puts 'Creating Categories...'



puts '****************************Finished**********************************'



