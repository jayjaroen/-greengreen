# Challenge category and its challenges
require 'faker'
require 'open-uri'

UserChallengeRecord.destroy_all
UserChallenge.destroy_all
Challenge.destroy_all
Tip.destroy_all
ChallengeCategory.destroy_all
User.destroy_all

# ------------ Challenge Categories -------------------
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

# --------------Tips in Food Category-----------------
# Food tip 1 - buy local
tip_food_1_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658815101/Go%20green/local_inqwvu.png")
p tip_food_1 = Tip.create(name: 'Buy Local', description: 'Transportation of ingredients and food products are accounted for a large part of carbon emission in the food system -nearly one of fifth of carbon emission are factored into transportation.  So you may consider to buy food that produced locally to reduce this factor.', challenge_category: category_food)
tip_food_1.photo.attach( io: tip_food_1_photo, filename: "tip_food_1_photo.png", content_type: 'image/png')

# Food tip 2 - less meat
tip_food_2_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658815465/Go%20green/cow_ywwv9u.jpg")
p tip_food_2 = Tip.create(name: 'Less Meat', description: 'Meat and dairy accounts for around 14.5% of global green house gas emissions. Cows are ruminant animal which have multi-chamber stomachs that rely on bacteria to digest plant-based foods. In the digestive process, a single cow can emit up to 500 litres of methane each day.',challenge_category: category_food)
tip_food_2.photo.attach(io: tip_food_2_photo, filename: "tip_food_2_photo.png", content_type:'image/png')

p tip_food_3 = Tip.create(name: 'Plant-based Meat as an alternative', description: 'Plant-based Meat emits less greenhouse gas of around 30%-90% than conventional meat', challenge_category: category_food)

# --------------Tips in Plastic Category-----------------
# Plastic tip 1 - less plastic
tip_plastic_1_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658563472/Go%20green/3_dau2kr.jpg")
p tip_plastic_1 = Tip.create(name: 'Less plastics /Use re-usable water bottles', description: 'Did you know that more than 5 trillion pieces of plastic are already floating in our oceans? Every minute, a truck dumps plastic in our oceans, endangering wildlife and our environment. It is estimated that by 2050, virtually every seabird species on the planet will be eating plastic.', challenge_category: category_plastic )
tip_plastic_1.photo.attach(io: tip_plastic_1_photo, filename:"tipplastic1.png", content_type:'image/png')

# Plastic tip 2 - water bottle
tip_plastic_2_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659012366/Go%20green/waterbottle_eyyosm.jpg")
p tip_plastic_2 = Tip.create(name: 'Carrying your own water bottle', description: 'Instead of buying a bottled water, you may consider carrying your own re-usable water bottle. Buying 1.5 bottled water can leave a 200 g CO2 footprint.If you carry your own water bottle and refill at a refill station everyday, you can save around 73 kg of CO2 emissions per year! Small actions have an accumulated effect. ', challenge_category: category_plastic )
tip_plastic_2.photo.attach(io:tip_plastic_2_photo, filename:"tipplastic2.png", content_type:'image/png')

# --------------Tips in Transportation Category-----------------
# Transportation 1 - why fly when you zoom
p tip_transportation_1 = Transportation.create(name:"Why fly when you can zoom?", description: "A carbon footprint of flying is massive. It is estimated that aviation carbon emission  is around 250 kg CO2 per hour of flying. If you are a regular flyer, your carbon footprint would be much higher than average. Environment wise, it would be reasonable to have an online meeting rather than flying in person if it’s possible. Did you know that having Zoom call on 13-inch Macbook pro emit 4 CO2 per hour? Maybe it’s time to think “carbon efficient!”")

# Transportation 2 - Your Choice of commute matters
tip_transportation_2 = Transportation.create(name:"Your Choice of commute matters", description:"Did you know that transportation sector accounted for 20 percent of global Greenhouse gases emission and rapidly increasing? Our choice of daily commute matters to climate change more than we think.  The bottom line is all means of transport emit carbon but varying in a different degree.", challenge_category: category_transportation)

# --------------Tips in Reduce/recycle/Category-----------------
# Reduce 1 - Re-think purchase
tip_reduce_1 = Reduce.create(name:"Re-think your purchases", description:"We all love the new Macbook Air M2. It is beautifully crafted powered by the newest Apple chip. But do you actually need a new laptop now? Is your current one still working just fine? Did you know that making laptop emit a huge amount of carbon? The carbon emission of 16-inch Macbook pro 1 TB storage is around 620 kg which is over a half of a ton! Reconsider your decision before spending that money for your new gadget or if necessary you may need to recycle your old one. ")



# -------------Challenges in Food Category---------------------
p challenge_food_1 = Challenge.create(action: 'No food delivery', carbon_score: 40, challenge_category: category_food)
p challenge_food_2 = Challenge.create(action: 'Less meat (250 g)', carbon_score: 1210, challenge_category: category_food)
p challenge_food_3 = Challenge.create(action: 'Black coffee instead of cow milk latte', carbon_score: 465, challenge_category: category_food)
p challenge_food_4 = Challenge.create(action: 'Oat milk latte instead of cow milk latte', carbon_score: 264, challenge_category: category_food)

# ---------------Challenge Category: Plastic--------------------------

p challenge_plastic_1 = Challenge.create(action: 'No disposable cups', carbon_score: 110, challenge_category: category_plastic)
p challenge_plastic_2 = Challenge.create(action: 'No plastic bags', carbon_score: 10, challenge_category: category_plastic)

# category = [category_food, category_plastic, category_electricity, category_reduce, category_transportation]
# challenge_food = [challenge_food_1, challenge_food_2, challenge_food_3, challenge_food_4]
# challenge_plastic = [challenge_plastic_1, challenge_plastic_2]

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
