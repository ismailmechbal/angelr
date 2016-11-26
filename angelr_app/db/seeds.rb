# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "hi@weavler.com", password: "aqwzsx", password_confirmation: "aqwzsx")
AdminUser.create(email: "hi@weavler.com", password: "aqwzsx", password_confirmation: "aqwzsx")
Startup.create(
  name: 'Weavler',
  short_desc: "Marketplace for craftsmen",
  long_desc: "It is with love and devotion of handcrafted and designed items Weavler exist. We know launching an online store feels a bit like opening a store on a hectic street, how do you get people to enter your store? Weavler will give you tutorials and all the tools you need to reach out to your customers! Join us and you’ll get to be a part of our journey to put you on the map.",
  website_url: "https://www.weavler.it",
  video_url: "https://www.youtube.com/embed/rewNSngzwS4",
  note_founded: "The company was founded in 2013 and our MVP was launched in 2014",
  note_team_size: "We are a total of 6 in the team. 4 are full time, 1 half time and the last is a consultant",
  note_stage: "We have launched a beta and gotten our first revenue",
  note_traction: "We have 100 registered craftsmen, 1000 daily visitors and SEK 10k in monthly revenue",
  user_id: 1,
)
Team.create([
  {
    name: 'Ismail Mechbal',
    role: "CEO",
    facebook_url: "https://facebook.com/",
    twitter_url: "https://twitter.com",
    linkedin_url: "https://linkedin.com",
    startup_id: 1
  },
  {
    name: 'Wael El Hachimi',
    role: "CTO",
    facebook_url: "https://facebook.com/",
    twitter_url: "https://twitter.com",
    linkedin_url: "https://linkedin.com",
    startup_id: 1
  },
  {
    name: 'Mohamed El Hachimi',
    role: "CFO",
    facebook_url: "https://facebook.com/",
    twitter_url: "https://twitter.com",
    linkedin_url: "https://linkedin.com",
    startup_id: 1
  },
  {
    name: 'Yacine Fandi',
    role: "COO",
    facebook_url: "https://facebook.com/",
    twitter_url: "https://twitter.com",
    linkedin_url: "https://linkedin.com",
    startup_id: 1
  }
])
Gallery.create([
  {
    startup_id: 1
  },
  {
    startup_id: 1
  },
  {
    startup_id: 1
  },
  {
    startup_id: 1
  },
  {
    startup_id: 1
  },
  {
    startup_id: 1
  }
])
Deck.create([
  {
    startup_id: 1
  },
  {
    startup_id: 1
  },
  {
    startup_id: 1
  }
])
Attachment.create([
  {
    attachable_type: 'Team',
    attachable_id: "1",
    attachment: File.new("#{Rails.root}/public/uploads/team/01/ismail.jpg")
  },
  {
    attachable_type: 'Team',
    attachable_id: "2",
    attachment: File.new("#{Rails.root}/public/uploads/team/01/wael.jpg")
  },
  {
    attachable_type: 'Team',
    attachable_id: "3",
    attachment: File.new("#{Rails.root}/public/uploads/team/01/mohamed.jpg")
  },
  {
    attachable_type: 'Team',
    attachable_id: "4",
    attachment: File.new("#{Rails.root}/public/uploads/team/01/yacine.jpg")
  },
  {
    attachable_type: 'Deck',
    attachable_id: "1",
    attachment: File.new("#{Rails.root}/public/uploads/deck/01/weavler-1.pdf")
  },
  {
    attachable_type: 'Gallery',
    attachable_id: "1",
    attachment: File.new("#{Rails.root}/public/uploads/gallery/01/weavler-1.png")
  },
  {
    attachable_type: 'Gallery',
    attachable_id: "2",
    attachment: File.new("#{Rails.root}/public/uploads/gallery/01/weavler-2.png")
  },
  {
    attachable_type: 'Gallery',
    attachable_id: "3",
    attachment: File.new("#{Rails.root}/public/uploads/gallery/01/weavler-3.png")
  },
  {
    attachable_type: 'Gallery',
    attachable_id: "4",
    attachment: File.new("#{Rails.root}/public/uploads/gallery/01/weavler-4.png")
  },
  {
    attachable_type: 'Gallery',
    attachable_id: "5",
    attachment: File.new("#{Rails.root}/public/uploads/gallery/01/weavler-5.png")
  },
  {
    attachable_type: 'Gallery',
    attachable_id: "6",
    attachment: File.new("#{Rails.root}/public/uploads/gallery/01/weavler-6.png")
  }
])