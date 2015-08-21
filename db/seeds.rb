# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times {
  obj = Entry.new
  obj.title = "Lorem ipsum dolor sit #{('a'..'z').to_a.shuffle[0,8].join.capitalize}"
  obj.author = "#{('a'..'z').to_a.shuffle[0,4].join.capitalize} Wahlberg"
  obj.body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus porttitor justo, interdum fermentum odio. Proin luctus dolor ante, quis faucibus nibh interdum eget. Aliquam laoreet pellentesque bibendum. Mauris sem justo, faucibus eget malesuada a, venenatis vel justo. Fusce eu nisl et justo facilisis eleifend lacinia id elit. Sed dui enim, auctor sit amet posuere at, mollis in ex. Quisque sodales a risus at efficitur. Pellentesque at tempor leo, non porttitor est. Vestibulum malesuada pharetra nunc nec fringilla. Pellentesque enim eros, efficitur eu rhoncus lobortis, consequat at ipsum. Nunc laoreet est id finibus malesuada. Aenean pharetra tellus nec lorem volutpat porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae"
  obj.save!
  puts "Created entry by #{obj.author}"
}
puts "...created #{Entry.all.count} entries"
