# Challenge category and its challenges
require 'faker'
require 'open-uri'
require 'json'

Location.destroy_all
CategoryScore.destroy_all
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

# Food tip 3 = plant-based meat
tip_food_3_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659145630/Go%20green/plantbasedmeat_xc5fvu.jpg")
p tip_food_3 = Tip.create(name: 'Plant-based Meat as an alternative', description: 'Did you know? Plant-based meat and alternatives  emit less greenhouse gasses of around 30%-90% than conventional meat. Thinking in terms of carbon emission, eating vegetables is more efficient than growing plants to feed animals and eating those animals. Currently there are many delicious plant-based meat alternatives to pick from. So why not give it a try and be more environmentally friendly?')
tip_food_3.photo.attach(io: tip_food_3_photo, filename: "tip_food_3_photo.png", content_type: 'image/png')

# Food tip 4 = Your Choice of Coffee Matters
tip_food_4_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659146439/Go%20green/dairy01_h289jb.png")
p tip_food_4 = Tip.create(name: 'Your Choice of Coffee Matters', description: 'Yes, your choice of coffee has a large impact on climate change more than you know.
  A cup of black coffee emit 87 g CO2
  A cup of large oat milk latte emit 288 g CO2
  A cup of large cow milk latte emit 552 g CO2
  If you are a Latte lover, you will leave a carbon footprint more than an Espresso lover. The carbon emission that comes from milk which requires a lot of resources to produce, making a Latte less carbon efficient.',
  challenge_category: category_food
  )
tip_food_4.photo.attach(io: tip_food_4_photo, filename: "tip_food_4_photo.png", content_type: 'image/png')

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
tip_transportation_1_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659146968/Go%20green/flying_ea6rov.png")
p tip_transportation_1 = Tip.create(name:"Why fly when you can zoom?", description: "A carbon footprint of flying is massive. It is estimated that aviation carbon emission  is around 250 kg CO2 per hour of flying. If you are a regular flyer, your carbon footprint would be much higher than average. Environment wise, it would be reasonable to have an online meeting rather than flying in person if it’s possible. Did you know that having Zoom call on 13-inch Macbook pro emit 4 CO2 per hour? Maybe it’s time to think “carbon efficient!”")
tip_transportation_1.photo.attach(io:tip_transportation_1_photo, filename:"tiptransportation1.png", content_type:'image/png')

# Transportation 2 - Your Choice of commute matters
tip_transportation_2_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658825916/Go%20green/transportation_admxzo.jpg")
p tip_transportation_2 = Tip.create(name:"Your Choice of commute matters", description:"Did you know that transportation sector accounted for 20 percent of global Greenhouse gases emission and rapidly increasing? Our choice of daily commute matters to climate change more than we think.  The bottom line is all means of transport emit carbon but varying in a different degree.", challenge_category: category_transportation)
tip_transportation_2.photo.attach(io:tip_transportation_2_photo, filename:"tiptransportation2.png", content_type:'image/png')


# --------------Tips in Electricity-----------------
# Electricity 1 - Reduce your Screen Time
tip_electricity_1_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659146299/Go%20green/nature_bkbzjc.jpg")
p tip_electricity_1 = Tip.create(name:"Reduce your Screen Time", description: "In 2020, there are around 7.7 billion mobile phones in use which is estimated to emit around 580 million tons CO2e – which roughly accounted for 1 percent of global emissions! Sending texts, downloading data from your smartphone accounts for some degrees of carbon footprint. Maybe it’s time to put down your phone for a little, disconnect yourself from the internet and pick up your favorite book instead?", challenge_category: category_electricity)
tip_electricity_1.photo.attach(io:tip_electricity_1_photo, filename:"tipelectricity1.png", content_type:'image/png')


# Electricity 2 - Unplug!
tip_electricity_2_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659146180/Go%20green/unplug_dtlkiy.jpg")
p tip_electricity_2 = Tip.create(name:"Unplug!", description: "Did you know that if your electronic devices are plugged in even when they are turned off, they are also consuming electricity? It is estimated that this standby power accounted for around 5 -10 percent of residential energy use in the US. What can you do about it? You may consider getting a power stripe with switches and turning off the switches while plugging your devices when not using . This can save up your electricity consumption!
  ")
tip_electricity_2.photo.attach(io:tip_electricity_2_photo, filename:"tipelectricity2.png", content_type:'image/png')


# --------------Tips in Reduce/recycle/Category-----------------
# Reduce 1 - Re-think purchase
tip_reduce_1_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659146020/Go%20green/technology_tlb8jk.jpg")
p tip_reduce_1 = Tip.create(name:"Re-think your purchases", description:"We all love the new Macbook Air M2. It is beautifully crafted powered by the newest Apple chip. But do you actually need a new laptop now? Is your current one still working just fine? Did you know that making laptop emit a huge amount of carbon? The carbon emission of 16-inch Macbook pro 1 TB storage is around 620 kg which is over a half of a ton! Reconsider your decision before spending that money for your new gadget or if necessary you may need to recycle your old one. ")
tip_reduce_1.photo.attach(io:tip_reduce_1_photo, filename:"tipreduce1.png", content_type:'image/png')

# Reduce 2 Donate your clothes
tip_reduce_2_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659145945/Go%20green/recylcyclothes_t116xq.jpg")
p tip_reduce_2 = Tip.create(name:"Donate your clothes", description: "Have you ever bought clothes and never worn them? With the emerging trend of fast fashion, we just don’t want to miss out? But did you know that the clothing industry accounts for around 10% of global emissions and fast fashion has become one of the world’s  largest polluter?
  The process of producing clothes requires a lot of resources which inevitably leaves a massive footprint. Before throwing your unwanted clothes away and letting them end up in the landfill, you may consider donating to those in need. This may help to circulate resources without depleting the new one.
  ",challenge_category: category_reduce)
tip_reduce_2.photo.attach(io:tip_reduce_2_photo, filename:"tipreduce2.png", content_type:'image/png')


# -------------Challenges in Food Category---------------------
p challenge_food_1 = Challenge.create(action: 'No food delivery', carbon_score: 40, challenge_category: category_food)
p challenge_food_2 = Challenge.create(action: 'Less meat (250 g)', carbon_score: 1210, challenge_category: category_food)
p challenge_food_3 = Challenge.create(action: 'Black coffee instead of cow milk latte', carbon_score: 465, challenge_category: category_food)
p challenge_food_4 = Challenge.create(action: 'Oat milk latte instead of cow milk latte', carbon_score: 264, challenge_category: category_food)

# ---------------Challenge Category: Plastic--------------------------

p challenge_plastic_1 = Challenge.create(action: 'No disposable cups', carbon_score: 110, challenge_category: category_plastic)
p challenge_plastic_2 = Challenge.create(action: 'No plastic bags', carbon_score: 10, challenge_category: category_plastic)
p challenge_plastic_3 = Challenge.create(action: 'No plastic straws', carbon_score: 1.1, challenge_category: category_plastic)
p challenge_plastic_4 = Challenge.create(action: 'Carrying your own water bottle', carbon_score: 200, challenge_category: category_plastic)

# ---------------Challenge Category: Electricity--------------------------
p challenge_electricity_1 = Challenge.create(action: 'No dryer', carbon_score: 22, challenge_category: category_electricity)
p challenge_electricity_2 = Challenge.create(action: 'Less screen time one hour per day', carbon_score: 0.7, challenge_category: category_electricity)
p challenge_electricity_3 = Challenge.create(action: 'Less computer time one hour per day', carbon_score: 4, challenge_category: category_electricity)

# ---------------Challenge Category: Transportation--------------------------
p challenge_transportation_1 = Challenge.create(action: 'No Car day', carbon_score: 5420, challenge_category: category_transportation)
p challenge_transportation_2 = Challenge.create(action: 'Cycling instead of Car', carbon_score: 3750, challenge_category: category_transportation)
p challenge_transportation_3 = Challenge.create(action: 'Cycling instead of Bus', carbon_score: 1200, challenge_category: category_transportation)
p challenge_transportation_4 = Challenge.create(action: 'Bus instead of Car', carbon_score: 2550, challenge_category: category_transportation)

# ---------------Challenge Category: Reduce--------------------------
p challenge_reduce_1 = Challenge.create(action: 'Donates shoes', carbon_score: 1150, challenge_category: category_reduce)
p challenge_reduce_2 = Challenge.create(action: 'Donates pants', carbon_score: 8000, challenge_category: category_reduce)
p challenge_reduce_3 = Challenge.create(action: 'Recycle plastic (1kg)', carbon_score: 1080, challenge_category: category_reduce)

# category = [category_food, category_plastic, category_electricity, category_reduce, category_transportation]
# challenge_food = [challenge_food_1, challenge_food_2, challenge_food_3, challenge_food_4]
# challenge_plastic = [challenge_plastic_1, challenge_plastic_2]

30.times do
  p user = User.create(first_name: Faker::Name.name, email: Faker::Internet.email, password: Devise.friendly_token)
  puts "created user #{user.id}"
  n = rand(3..15)
  p challenges = Challenge.all.sample(n)
  n.times do
    p uc = UserChallenge.create(user: user, challenge: challenges.pop)
    p uc.errors.full_messages
    p UserChallengeRecord.create(user_challenge: uc, date: Faker::Date.between(from: 30.days.ago, to: Date.today))
  end
end

########################### parsing data from json##########################
filepath = "data/emission_data.json"

serialized_results = File.read(filepath)

results = JSON.parse(serialized_results)
p results
results.each do |result|
  location = Location.new
  location.country = result['country']
  location.emission_20 = result['totCO2_2020']
  location.emission_17 = result['totCO2_2017']
  location.per_cap_20 = result['co2PerCapita2020']
  location.per_cap_17 = result['co2PerCapita2017']
  location.pop_22 = result['pop2022']
  p location
  p location.save
end
