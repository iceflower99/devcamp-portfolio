User.create!(
  email: "test3@test.com",
  password: "753951",
  password_confirmation: "753951",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test@test.com",
  password: "7897410",
  password_confirmation: "7897410",
  name: "Regular User",
)

puts "1 regular user created"



3.times do |topic|
Topic.create!(
  title: "Topic#{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title:"My Blog Post #{blog}",
    body: "I like coding and i'm eighteen",
    topic_id:Topic.last.id
    
    )
end 

puts "10 blog posts created" 

5.times do |skill|
  Skill.create!(
    title:"Rails #{skill}",
    percent_utilized: 15
   )
 end
 
 puts "5 skills created"
 
 8.times do |portfolio_item|
     Portfolio.create!(
     title: "Portfolio title: #{portfolio_item}" ,
     subtitle:"Ruby on rails" ,
     body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
    proident, sunt in culpa qui officia deserunt mollit anim id est laborum." , 
     main_image:"http://placehold.it/600x400" ,
     thumb_image: "http://placehold.it/350x200"
     
     )
 end 
 
  1.times do |portfolio_item|
     Portfolio.create!(
     title: "Portfolio title: #{portfolio_item}" ,
     subtitle:"Angular" ,
     body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
    proident, sunt in culpa qui officia deserunt mollit anim id est laborum." , 
     main_image:"http://placehold.it/600x400" ,
     thumb_image: "http://placehold.it/350x200"
     
     )
 end 
 
 puts "9 portfolio items created"
 
 3.times do |technology|
   Portfolio.last.technologies.create!(
     name:"Technology#{technology}",
     )
 end
 
  puts "3 technologies created"
