# Challenge category and its challenges
require 'faker'
require 'open-uri'

UserChallengeRecord.destroy_all
UserChallenge.destroy_all
Challenge.destroy_all
Tip.destroy_all
ChallengeCategory.destroy_all
User.destroy_all

# Challenge Categories

#  Plastic + cloudinary svg
plastic_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659000941/Go%20green/plasticone_h98nqb.svg")
p category_plastic = ChallengeCategory.create(name:'Plastics', description:'“Plastic doesn’t belong in nature, and we need to stop it from ending up there.”- Ellen MacArthur')
category_plastic.photo.attach(io:plastic_photo, filename: "category_plastic.png", content_type: 'image/png')

# Food + cloudinary svg
food_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658997149/Go%20green/Mediamodifier-Design_1_naaeb7.svg")
p category_food = ChallengeCategory.create(name: 'Food', description:"What you eat and where your food comes from matters to global warming more than you think")
category_food.photo.attach(io:food_photo, filename: "category_food.png", content_type: 'image/png')

# Electricity + cloudinary svg
electricty_photo= URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658997590/Go%20green/editedlightbulb_hy6u4l.svg")
p category_electricity = ChallengeCategory.create(name: 'Electricity', description:"Energy saved is Energy Generated")
category_electricity.photo.attach(io:electricty_photo, filename: "category_electricity.png", content_type: 'image/png')

# Transportation + cloudinary svg
transportation_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658997442/Go%20green/transport_toisjf.svg")
p category_transportation = ChallengeCategory.create(name: 'Transportation', description:"Don’t be Fuelish.")
category_transportation.photo.attach(io:transportation_photo, filename:"category_transport.png", content_type: 'image/png')

# Reduce + cloudinary svg
reduce_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658997775/Go%20green/recycled_recyle_vaxj53.svg")
p category_reduce =  ChallengeCategory.create(name: 'Re-duce, re-use, re-cycle', description:"Recycle the present, save the future.")
category_reduce.photo.attach(io:reduce_photo, filename: "category_reduce.png", content_type: 'image/png')

# Tips in Food Category
p tip_food_1 = Tip.create(name: 'Buy Local', description: 'Transportation of ingredients and food products are accounted for a large part of carbon emission in the food system -nearly one of fifth of carbon emission are factored into transportation.  So you may consider to buy food that produced locally to reduce this factor.', challenge_category: category_food)
p tip_food_2 = Tip.create(name: 'Less Meat', description: 'Meat and dairy accounts for around 14.5% of global green house gas emissions. Cows are ruminant animal which have multi-chamber stomachs that rely on bacteria to digest plant-based foods. In the digestive process, a single cow can emit up to 500 litres of methane each day.',challenge_category: category_food)
p tip_food_3 = Tip.create(name: 'Plant-based Meat as an alternative', description: 'Plant-based Meat emits less greenhouse gas of around 30%-90% than conventional meat', challenge_category: category_food)
# Challenges in Food Category
p challenge_food_1 = Challenge.create(action: 'No food delivery', carbon_score: 40, challenge_category: category_food)
p challenge_food_2 = Challenge.create(action: 'Less meat (250 g)', carbon_score: 1210, challenge_category: category_food)
p challenge_food_3 = Challenge.create(action: 'Black coffee instead of cow milk latte', carbon_score: 465, challenge_category: category_food)
p challenge_food_4 = Challenge.create(action: 'Oat milk latte instead of cow milk latte', carbon_score: 264, challenge_category: category_food)

# Challenge Category: Plastic

p tip_plastic_1 = Tip.create(name: 'Less plastics /Use re-usable water bottles', description: 'Did you know that more than 5 trillion pieces of plastic are already floating in our oceans? Every minute, a truck dumps plastic in our oceans, endangering wildlife and our environment. It is estimated that by 2050, virtually every seabird species on the planet will be eating plastic.', challenge_category: category_plastic )
p challenge_plastic_1 = Challenge.create(action: 'No disposable cups', carbon_score: 110, challenge_category: category_plastic)
p challenge_plastic_2 = Challenge.create(action: 'No plastic bags', carbon_score: 10, challenge_category: category_plastic)

category = [category_food, category_plastic, category_electricity, category_reduce, category_transportation]
challenge_food = [challenge_food_1, challenge_food_2, challenge_food_3, challenge_food_4]
challenge_plastic = [challenge_plastic_1, challenge_plastic_2]


20.times do
  p user = User.create(first_name: Faker::Name.name, email: Faker::Internet.email, password: Devise.friendly_token)
  puts "created user #{user.id}"
  n = rand(1..4)
  p challenges = Challenge.all.sample(n)
  n.times do
    p uc = UserChallenge.create(user: user, challenge: challenges.pop)
    p uc.errors.full_messages
    p UserChallengeRecord.create(user_challenge: uc, date: Faker::Date.between(from: 30.days.ago, to: Date.today))
  end
end
