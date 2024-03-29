# Challenge category and its challenges
require 'faker'
require 'open-uri'
require 'json'

Reference.destroy_all
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
p tip_food_1 = Tip.create(name: 'Buy Local', description: 'By supporting small-scale, locally owned businesses, you can help cut carbon emissions and air pollution. By buying locally, you are reducing your food miles, transportation pollution and plastic packaging waste. Did you know? In 2019, it was reported that Amazon produced over 465 million pounds of plastic packaging waste. Start supporting your local markets today!.', challenge_category: category_food)
tip_food_1.photo.attach( io: tip_food_1_photo, filename: "tip_food_1_photo.png", content_type: 'image/png')

# Food tip 2 - less meat
tip_food_2_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658815465/Go%20green/cow_ywwv9u.jpg")
p tip_food_2 = Tip.create(name: 'Less meat', description: 'Livestock agriculture is one of the biggest contributors to climate change. A single cow can emit up to 500 litres of methane a day. Over 70% of cows live on factory farms, where profit is prioritized over living conditions and pollution produced. Factory farms contribute to climate change because of the amount of animal waste and methane gas produced which directly impacts the planet. How can we start eating less meat? It is recommended to start off by introducing meatless mondays, introduce more beans to your diet as well as meat alternatives like Beyond burgers.',challenge_category: category_food)
tip_food_2.photo.attach(io: tip_food_2_photo, filename: "tip_food_2_photo.png", content_type:'image/png')

# Food tip 3 = plant-based meat
tip_food_3_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659145630/Go%20green/plantbasedmeat_xc5fvu.jpg")
p tip_food_3 = Tip.create(name: 'Plant-based meat as an alternative', description: 'Did you know? Plant-based meat and alternatives emit less greenhouse gasses of around 30%-90% than conventional meat. Thinking in terms of carbon emission, eating vegetables is more efficient than growing plants to feed animals and eating those animals. Currently, there are many plant-based meat alternatives to pick from. So why not give it a try and be more environmentally friendly?')
tip_food_3.photo.attach(io: tip_food_3_photo, filename: "tip_food_3_photo.png", content_type: 'image/png')

# Food tip 4 = Your Choice of Coffee Matters
tip_food_4_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659146439/Go%20green/dairy01_h289jb.png")
p tip_food_4 = Tip.create(name: 'Your Choice of Coffee Matters', description: 'Yes, your choice of coffee has a large impact on climate change more than you know. A cup of black coffee emits 87g CO2e. A cup of large oat milk latte emits 288g CO2e. A cup of large cow milk latte emits 552g CO2. Did you know? Enjoying a cup  of latte, leaves a larger carbon footprint when compared to an expresso. The carbon emissions  that come from milk requires a lot of resources to produce.', challenge_category: category_food )
tip_food_4.photo.attach(io: tip_food_4_photo, filename: "tip_food_4_photo.png", content_type: 'image/png')

# --------------Tips in Plastic Category-----------------
# Plastic tip 1 - less plastic
tip_plastic_1_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658563472/Go%20green/3_dau2kr.jpg")
p tip_plastic_1 = Tip.create(name: 'Less plastics /Use re-usable water bottles', description: 'Did you know that more than 5 trillion pieces of plastic are already floating in our oceans? Every minute, a truck dumps plastic in our oceans, endangering wildlife and our environment. It is estimated that by 2050, virtually every seabird species on the planet will be eating plastic. Start reducing your plastic footprint today!', challenge_category: category_plastic )
tip_plastic_1.photo.attach(io: tip_plastic_1_photo, filename:"tipplastic1.png", content_type:'image/png')

# Plastic tip 2 - water bottle
tip_plastic_2_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659012366/Go%20green/waterbottle_eyyosm.jpg")
p tip_plastic_2 = Tip.create(name: 'Carry your own water bottle', description: 'Instead of buying bottled water, you may consider carrying your own re-usable water bottle. Buying 1.5 bottled water can leave a 200g CO2 footprint. If you carry your own water bottle, you can save around 73 kg of CO2 emissions per year! Small actions have a large accumulated effect.', challenge_category: category_plastic )
tip_plastic_2.photo.attach(io:tip_plastic_2_photo, filename:"tipplastic2.png", content_type:'image/png')

# --------------Tips in Transportation Category-----------------
# Transportation 1 - why fly when you zoom
tip_transportation_1_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659146968/Go%20green/flying_ea6rov.png")
p tip_transportation_1 = Tip.create(name:"Why fly when you can zoom?", description: "Did you know? Flying is the most damaging way to travel for our planet. It is estimated that aviation carbon emission is around 250kg CO2 per hour of flying. If you are a regular flyer, your carbon footprint would be much higher than average. How can we reduce flying? Try travelling via trains or choosing an alternative way to get from point A to B.")
tip_transportation_1.photo.attach(io:tip_transportation_1_photo, filename:"tiptransportation1.png", content_type:'image/png')

# Transportation 2 - Your Choice of commute matters
tip_transportation_2_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1658825916/Go%20green/transportation_admxzo.jpg")
p tip_transportation_2 = Tip.create(name:"Your choice of commute matters", description:"Did you know that the transportation sector accounted for 20 percent of global greenhouse emissions and rapidly it is continously increasing? Our choice of daily commute matters to climate change more than we think.  The bottom line is all means of transport emit carbon but varying in a different degree. (Biking emits around 21 g CO2e/km, a bus emits around 107 g CO2e/km, car emits around 270 g CO2e/km). If we commute by car for 20km every day for a year, we would emit around 1.97 ton CO2e per year. This emission rate is even higher than the annual emission per capita of Fiji (2019) which stands at 1.8 ton CO2e.", challenge_category: category_transportation)
tip_transportation_2.photo.attach(io:tip_transportation_2_photo, filename:"tiptransportation2.png", content_type:'image/png')


# --------------Tips in Electricity-----------------
# Electricity 1 - Reduce your Screen Time
tip_electricity_1_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659146299/Go%20green/nature_bkbzjc.jpg")
p tip_electricity_1 = Tip.create(name:"Reduce your screen time", description: "In 2020, there are around 7.7 billion mobile phones in use which is estimated to emit around 580 million tons of CO2e – which roughly accounted for 1 percent of global emissions! Did you know that having a Zoom call on 13-inch Macbook pro emits 4 CO2 per hour? It’s time to put down your phone or switch your laptop off for a little, disconnect yourself from the internet and pick up your favorite book instead.", challenge_category: category_electricity)
tip_electricity_1.photo.attach(io:tip_electricity_1_photo, filename:"tipelectricity1.png", content_type:'image/png')


# Electricity 2 - Unplug!
tip_electricity_2_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659146180/Go%20green/unplug_dtlkiy.jpg")
p tip_electricity_2 = Tip.create(name:"Unplug!", description: "Did you know that if your electronic devices are plugged in even when they are turned off, they are still consuming electricity? It is estimated that this standby power accounted for around 5 -10 percent of residential energy use in the US. What can you do about it? Consider getting a power stripe with switches or plugging your devices out. This can reduce your electricity consumption!")
tip_electricity_2.photo.attach(io:tip_electricity_2_photo, filename:"tipelectricity2.png", content_type:'image/png')


# --------------Tips in Reduce/recycle/Category-----------------
# Reduce 1 - Re-think purchase
tip_reduce_1_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659146020/Go%20green/technology_tlb8jk.jpg")
p tip_reduce_1 = Tip.create(name:"Re-think your purchases", description:"We all love the new Macbook Air M2. It is beautifully crafted and powered by the newest Apple chip. But do you actually need a new laptop now? Is your current one still working just fine? Did you know that manufactoring a laptop emits a huge amount of carbon? The carbon emission of a 16-inch Macbook pro with 1 TB storage is around 620kg C02e which is over a half of a ton! Reconsider your decision before spending that money for your next purchase.")
tip_reduce_1.photo.attach(io:tip_reduce_1_photo, filename:"tipreduce1.png", content_type:'image/png')

# Reduce 2 Donate your clothes
tip_reduce_2_photo = URI.open("https://res.cloudinary.com/depnzql1y/image/upload/v1659145945/Go%20green/recylcyclothes_t116xq.jpg")
p tip_reduce_2 = Tip.create(name:"Donate your clothes", description: "The clothing industry accounts for around 10% of global emissions and fast fashion has become one of the world’s largest polluter. The process of producing clothes requires a lot of resources which inevitably leaves a massive footprint on our environment. Before throwing your unwanted clothes away or supporting fast fashion,  remember to either donate your clothes or shop at a secondhand store.", challenge_category: category_reduce)
tip_reduce_2.photo.attach(io:tip_reduce_2_photo, filename:"tipreduce2.png", content_type:'image/png')


# -------------Challenges in Food Category---------------------
p challenge_food_1 = Challenge.create(action: 'No food delivery', carbon_score: 40, challenge_category: category_food)
p challenge_food_2 = Challenge.create(action: 'Less meat (250 g)', carbon_score: 1210, challenge_category: category_food)
p challenge_food_3 = Challenge.create(action: 'Black coffee instead of cow milk latte', carbon_score: 465, challenge_category: category_food)
p challenge_food_4 = Challenge.create(action: 'Oat milk latte instead of cow milk latte', carbon_score: 264, challenge_category: category_food)

# ---------------Challenge Category: Plastic--------------------------

p challenge_plastic_1 = Challenge.create(action: 'No disposable cup', carbon_score: 110, challenge_category: category_plastic)
p challenge_plastic_2 = Challenge.create(action: 'No plastic bag', carbon_score: 10, challenge_category: category_plastic)
p challenge_plastic_3 = Challenge.create(action: 'No plastic straw', carbon_score: 1.1, challenge_category: category_plastic)
p challenge_plastic_4 = Challenge.create(action: 'Carry your own water bottle', carbon_score: 200, challenge_category: category_plastic)

# ---------------Challenge Category: Electricity--------------------------
p challenge_electricity_1 = Challenge.create(action: 'No hand dryer', carbon_score: 22, challenge_category: category_electricity)
p challenge_electricity_2 = Challenge.create(action: 'Less screen time one hour per day', carbon_score: 0.7, challenge_category: category_electricity)
p challenge_electricity_3 = Challenge.create(action: 'Less computer time one hour per day', carbon_score: 4, challenge_category: category_electricity)

# ---------------Challenge Category: Transportation--------------------------
p challenge_transportation_1 = Challenge.create(action: 'No car day', carbon_score: 5420, challenge_category: category_transportation)
p challenge_transportation_2 = Challenge.create(action: 'Cycling instead of car', carbon_score: 3750, challenge_category: category_transportation)
p challenge_transportation_3 = Challenge.create(action: 'Cycling instead of bus', carbon_score: 1200, challenge_category: category_transportation)
p challenge_transportation_4 = Challenge.create(action: 'Bus instead of car', carbon_score: 2550, challenge_category: category_transportation)

# ---------------Challenge Category: Reduce--------------------------
p challenge_reduce_1 = Challenge.create(action: 'Donates shoes', carbon_score: 1150, challenge_category: category_reduce)
p challenge_reduce_2 = Challenge.create(action: 'Donates pants', carbon_score: 8000, challenge_category: category_reduce)
p challenge_reduce_3 = Challenge.create(action: 'Recycle plastic (1kg)', carbon_score: 1080, challenge_category: category_reduce)


30.times do
  user = User.create(first_name: Faker::Name.name, email: Faker::Internet.email, password: Devise.friendly_token, country: Faker::Address.country )
  puts "created user #{user.id}"
    n = rand(3..18)
    m = rand(3..17)
    Challenge.all.sample(n).each do |c|
      uc = UserChallenge.create(user: user, challenge: c)
      m.times do
        UserChallengeRecord.create(user_challenge: uc, date: Faker::Date.between(from: 30.days.ago, to: Date.today))
      end
    end
end

# ########################### parsing data from json##########################
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


############################ Adding References #################################
p r1 = Reference.create(name: "Berners-Lee,M. (2022). The Carbon Footprint of Everything. Vancouver: Greystone Books.")
p r2 = Reference.create(name: "Recycling is an old habit. (2021). Retrieved from https://changeit.app/blog/recycle-matters/ ")
p r3 = Reference.create(name: "World Population Review.(2022) Carbon Footprint by Country 2022. Retrieved from https://worldpopulationreview.com/country-rankings/carbon-footprint-by-country")
p r4 = Reference.create(name: "European Cyclists’ Federation.(2013).How much CO2 does cycling really save? Retrieved from https://ecf.com/news-and-events/news/how-much-co2-does-cycling-really-save")
p r5 = Reference.create(name: "Minos, S. (2022). 3 Easy to reduce your standby power loads. Retrieved from https://www.energy.gov/energysaver/articles/3-easy-tips-reduce-your-standby-power-loads")
p r6 = Reference.create(name: "Aviation.(2022).Retrieved from https://www.carbonindependent.org/22.html")
p r7 = Reference.create(name: "Good Food Insitute.(2022).Plant-based meat for a growing world. Retrieved from https://gfi.org/resource/environmental-impact-of-meat-vs-plant-based-meat/")
p r8 = Reference.create(name: "Tapp Water.(2019).What is the carbon footprint of bottled water?.Retrived from https://tappwater.co/us/carbon-footprint-bottled-water/")
p r9 = Reference.create(name: "World Economic Forum. (2022).Green transport and cleaner mobility are key to meeting climate goals. Retrieved from https://www.weforum.org/agenda/2022/06/green-transport-and-cleaner-mobility-are-key-to-meeting-climate-goals/")
p r10 = Reference.create(name: "How donating clothes helps the environment.(n.d.). Retrieved from https://collectmyclothes.co.uk/how-donating-clothes-helps-the-environment/")
p r11 = Reference.create(name: "Ritchie, H. (2021). How much of global greenhouse gas emissions come from food? Retrieved from https://ourworldindata.org/greenhouse-gas-emissions-food")
p r12 = Reference.create(name: "Kreier, F. (2022). Transporting food generates whopping amounts of carbon dioxide. Retrieved from https://www.nature.com/articles/d41586-022-01766-0")
p r13 = Reference.create(name: "Gilman, S.(2015). Can we make cow burps climate-friendly?. Retrieved from https://ec.europa.eu/research-and-innovation/en/horizon-magazine/can-we-make-cow-burps-climate-friendly")
