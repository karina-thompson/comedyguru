# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Comedian.create(name:'Celia Pacquola', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250')
Comedian.create(name:'Simon Taylor', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250') 
Comedian.create(name:'Hannnah Gadsby', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250') 
Comedian.create(name:'Anne Edmonds', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250') 
Comedian.create(name:'Charlie Pickering', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250') 
Comedian.create(name:'Wil Anderson', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250') 
Comedian.create(name:'Dave Hughes', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250') 
Comedian.create(name:'Damian Callinan', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250') 
Comedian.create(name:'Dave Callan', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250') 
Comedian.create(name:'Felicity Ward', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250') 
Comedian.create(name:'Gen Fricker', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250') 
Comedian.create([{name:'Gillian Cosgriff', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250'}, {name:'Lawrence Leung', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250'}, {name:'Lessons with Luis', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250'}, {name:'Neal Portenza', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250'}, {name:'Rama Nicholas', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250'}, {name:'Sammy J & Randy', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250'}, {name:'Rhys Nicholson', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250'}, {name:'Steen Raskopoulos', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250'}, {name:'Tom Ballard', country: 'AUS', image:'https://placeholdit.imgix.net/~text?txtsize=33&txt=250%C3%97250&w=250&h=250'}])

Like.create(user_id: 1, comedian_id: 1083)
Like.create(user_id: 1, comedian_id: 1084)
Like.create(user_id: 1, comedian_id: 1080)
Like.create(user_id: 1, comedian_id: 1081)
Like.create(user_id: 2, comedian_id: 1080)
Like.create(user_id: 2, comedian_id: 1085)
Like.create(user_id: 2, comedian_id: 1086)
Like.create(user_id: 2, comedian_id: 1087)
Like.create(user_id: 1, comedian_id: 1080)
Like.create(user_id: 1, comedian_id: 1087)
Like.create(user_id: 1, comedian_id: 1086)
Like.create(user_id: 1, comedian_id: 1084)