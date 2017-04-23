Speaker.destroy_all

speaker1 = Speaker.new
speaker1.name = "Ethan Marcotte"
speaker1.bio = "Author of 'Responsive Design'"
speaker1.linkedin = "www.linkedin.com/"
speaker1.image_url = "ethan.jpg"
speaker1.talk_title = "Responsive Design: Patterns and Principles"
speaker1.twitter = "beep"
speaker1.talk_location = "Room 4"
speaker1.talk_description = "Responsive Design: Patterns and Principles"
speaker1.job_title = "Independent Web Designer"

speaker1.save


speaker2 = Speaker.new
speaker2.name = "Addy Osmani"
speaker2.bio = "Engineer at Google working on @GoogleChrome • Author • Creator of TodoMVC, @Yeoman, Material Design Lite"
speaker2.linkedin = "www.linkedin.com/"
speaker2.image_url = "addy.jpg"
speaker2.talk_title = "Introducing Progressive Web Apps with React.js"
speaker2.twitter = "addy_osmani"
speaker2.talk_location = "Room 1"
speaker2.talk_description = "Introducing Progressive Web Apps with React.js"
speaker2.job_title = "Engineer at Google"

speaker2.save


speaker3 = Speaker.new
speaker3.name = "Paul Irish"
speaker3.bio = "front-end engineer and a developer advocate for the Google Chrome web browser"
speaker3.linkedin = "www.linkedin.com/"
speaker3.image_url = "paul.jpeg"
speaker3.talk_title = "Why Moving Elements With Translate() Is Better Than Pos:abs Top/left"
speaker3.twitter = "paul_irish"
speaker3.talk_location = "Room 3"
speaker3.talk_description = "Why Moving Elements With Translate() Is Better Than Pos:abs Top/left"
speaker3.job_title = "Front End Engineer"

speaker3.save



speaker4 = Speaker.new
speaker4.name = "Chris Coyier"
speaker4.bio = "Designer and Creator of CodePen, Writer at CSS-Tricks"
speaker4.linkedin = "www.linkedin.com/"
speaker4.image_url = "chris.jpg"
speaker4.talk_title = "A Vue.js introduction for people who know just enough jQuery to get by"
speaker4.twitter = "chriscoyier"
speaker4.talk_location = "Room 2"
speaker4.talk_description = "A Vue.js introduction for people who know just enough jQuery to get by"
speaker4.job_title = "Designer at Codepen"

speaker4.save
