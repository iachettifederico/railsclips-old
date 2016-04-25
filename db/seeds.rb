# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(first_name: "Charles", last_name: "Wood", email: "chuck@devchat.tv")

Post.create!(user: user, title: "My first post", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt ex eleifend, pellentesque ex quis, sodales enim. Nunc rhoncus elit at sollicitudin tristique. Nulla facilisi. Phasellus diam urna, hendrerit in ipsum vel, egestas porta mi. Nullam at malesuada lacus. Aliquam vestibulum massa eget nulla sodales, ut molestie risus volutpat. Maecenas nec sollicitudin sapien. Nulla neque nibh, consectetur in auctor sed, ultrices eu est. Etiam a dolor eget magna convallis dignissim. Curabitur quis lectus sit amet orci laoreet aliquam laoreet finibus dolor.")
Post.create!(user: user, title: "My second post", content: "Nunc libero purus, ultricies et nisl vel, pretium dapibus nunc. In hac habitasse platea dictumst. Nullam ipsum mauris, vehicula et feugiat sit amet, commodo sed sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer mi nibh, aliquam ac dignissim id, facilisis et sem. Cras tincidunt, neque a tristique imperdiet, sem purus vestibulum urna, vitae varius nisi lacus sit amet orci. Aenean a nisi quis erat tristique luctus faucibus sed nisi. Vivamus in maximus felis. Etiam rhoncus leo gravida magna fringilla porttitor. Etiam placerat porttitor lectus, in ullamcorper nibh consectetur ut. Sed vehicula semper neque, id suscipit metus rhoncus nec.

")
