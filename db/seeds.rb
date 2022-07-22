# Challenge category and its challenges

ChallengeCategory.destroy
Tips.destroy

p category = ChallengeCategory(name: '1. Reduse/Re-use/Recycle', description:"Challenge yourself")
p category.challenges.create(action: 'Donates shoes', carbon_score:'11500')
p category.challenges.create(action: 'Donates pants', carbon_score:'8000')
p category.challenges.create(action: 'Recycle plastic(per kg)', carbon_score: '1080')


tips.create(name:"Tip 1", description:"did you know? blah blha blah")
