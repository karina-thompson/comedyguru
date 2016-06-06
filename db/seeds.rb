# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Comedian.create(name:'Celia Pacquola', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/35/35_cropped_730x4122.1447895232.jpg')
Comedian.create(name:'Simon Taylor', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/145/145_cropped_730x4122.1447912095.jpg') 
Comedian.create(name:'Hannnah Gadsby', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/41/41_cropped_730x4122.1446437299.jpg') 
Comedian.create(name:'Anne Edmonds', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/37/37_cropped_730x4122.1446435113.jpg') 
Comedian.create(name:'James Acaster', country: 'UK', image:'http://static.comedyfestival.com.au/2016/season/media/show/259/259_cropped_730x4122.1450396606.jpg')

Comedian.create(name:'Charlie Pickering', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/42/42_cropped_730x4122.1447895987.jpg') 
Comedian.create(name:'Wil Anderson', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/53/53_cropped_730x4122.1446438600.jpg') 
Comedian.create(name:'Dave Hughes', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/37/37_cropped_730x4122.1446435113.jpg') 
Comedian.create(name:'Nina Conti', country: 'UK', image:'http://static.comedyfestival.com.au/2016/season/media/show/626/626_cropped_730x4122.1456192737.jpg') 
Comedian.create(name:'Damian Callinan', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/453/453_cropped_730x412.1448949297.jpg') 
Comedian.create(name:'Dave Callan', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/664/664_cropped_730x412.1450419177.jpg') 
Comedian.create(name:'Arj Barker', country: 'USA', image:'http://static.comedyfestival.com.au/2016/season/media/show/340/340_cropped_730x4122.1449029472.jpg')

Comedian.create([{name:'Gillian Cosgriff', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/12/12_cropped_730x4122.1448236060.jpg'}, {name:'Lawrence Leung', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/156/156_cropped_730x412.1447829084.jpg'}, {name:'Lessons with Luis', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/266/266_cropped_730x41222.1448244948.jpg'}, {name:'Neal Portenza', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/112/112_cropped_730x4122.1448430053.jpg'}, {name:'Sammy J & Randy', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/192/192_cropped_730x4122.1449664108.jpg'}, {name:'Rhys Nicholson', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/413/413_cropped_730x4122.1447727859.jpg'}, {name:'Steen Raskopoulos', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/47/47_cropped_730x4122.1449027502.jpg'}])

Comedian.create(name:'Luisa Omielan', country: 'UK', image:'http://static.comedyfestival.com.au/2016/season/media/show/479/479_cropped_730x4122.1447826216.jpg')
Comedian.create(name:'Akmal', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/283/283_cropped_730x4122.1449206165.jpg')
Comedian.create(name:'Felicity Ward', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/189/189_cropped_730x4122.1449812018.jpg')
Comedian.create(name:'Greg Fleet', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/425/425_cropped_730x4122.1449976010.jpg')
Comedian.create(name:'Sarah Millican', country: 'UK', image:'http://static.comedyfestival.com.au/2016/season/media/show/605/605_cropped_730x4122.1449017291.jpg')
Comedian.create(name:'Josh Earl', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/109/109_cropped_730x4122.1447890845.jpg')
Comedian.create(name:'Michael Hing', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/650/650_cropped_730x4122.1449208485.jpg')
Comedian.create(name:'Tripod', country: 'AUS', image:'http://static.comedyfestival.com.au/2016/season/media/show/133/133_cropped_730x4122.1449197462.jpg')

30.times do |count|
  User.create(password: "secret#{count}")
end


6.times do |count|
  Like.create(user_id: 43, comedian_id: 1400 + count)
  Like.create(user_id: 44, comedian_id: 1400 + 2*count)
  Like.create(user_id: 45, comedian_id: 1405 + count)
  Like.create(user_id: 46, comedian_id: 1426 - count)
end


