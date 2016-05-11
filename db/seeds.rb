User.destroy_all
Post.destroy_all

[
 {first_name: "Clark", last_name: "Kent", email: "supes@example.com"},
 {first_name: "Bruce", last_name: "Wayne", email: "bats@example.com"},
 {first_name: "Peter", last_name: "Parker", email: "spidey@example.com"},
 {first_name: "Bruce", last_name: "Banner", email: "hulk@example.com"},
].each do |first_name:, last_name:, email:|
  User.create!(first_name: first_name, last_name: last_name, email: email)
end

users = User.all

all_content = <<EOF
Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in nibh ut quam varius rhoncus. Donec elementum purus nulla, id convallis leo egestas nec. Aenean imperdiet vestibulum neque, id tincidunt augue feugiat ut. Curabitur consectetur venenatis neque, ut aliquet ipsum porta ut. Donec hendrerit ante quis diam feugiat, vel aliquet justo luctus. Donec cursus pharetra tellus, sed pharetra est faucibus in. Ut vulputate rutrum volutpat. Nullam accumsan sem eleifend rhoncus tempus. Donec tristique sem pretium nibh auctor, at suscipit lacus placerat. Suspendisse vitae nunc est. Suspendisse augue leo, facilisis ac tempus in, gravida mollis tortor. Sed fermentum sapien ut auctor consectetur.
Praesent scelerisque dui non eros vestibulum convallis. Cras euismod nibh et tempor semper. Maecenas suscipit turpis a neque aliquet malesuada. Nunc pharetra nibh vel leo egestas, in blandit velit sollicitudin. Ut pellentesque lorem sit amet ante ultricies vestibulum. Nulla ut auctor diam, vitae iaculis odio. Etiam sit amet nisl at mauris ultrices placerat. Morbi lacinia leo ac enim venenatis tincidunt. Donec commodo iaculis tellus bibendum consectetur. Morbi dapibus eros id tempus sodales. Morbi vel odio convallis metus scelerisque pharetra. Fusce massa augue, condimentum sit amet leo sodales, viverra laoreet ligula. Cras rutrum sapien in ipsum cursus, et blandit elit euismod.
In non facilisis libero. Ut eu nisl nibh. Donec vel porttitor dui. Aenean leo erat, maximus eu odio molestie, rhoncus fermentum massa. Proin enim risus, semper nec venenatis ut, euismod ut lorem. Fusce eget nulla nulla. Sed sed diam ac felis ultrices commodo. Proin ac diam ac neque venenatis porttitor id et est. Maecenas facilisis mauris sed viverra semper. Proin cursus viverra imperdiet. Praesent pharetra suscipit malesuada.
Vestibulum ultrices felis at placerat faucibus. Sed id blandit eros. In tincidunt vestibulum porttitor. Sed at lectus massa. Phasellus egestas, nibh at pharetra bibendum, orci eros semper purus, sed iaculis quam libero vitae sem. Aenean faucibus sapien ultrices ipsum commodo mollis. Donec luctus nibh id quam posuere mattis. In venenatis aliquet magna, quis sagittis justo iaculis ac.
Maecenas porttitor risus egestas arcu laoreet, non eleifend magna efficitur. Vivamus sed molestie ante. Donec feugiat et nisi in convallis. Pellentesque non dignissim purus. Sed in ullamcorper dui. Mauris metus mauris, egestas euismod vulputate ut, placerat vitae dui. Nullam at mi vel dolor malesuada volutpat sit amet vel justo. Fusce a accumsan dui, vitae rutrum leo. Morbi ut eros id magna scelerisque mattis. Ut mattis metus id nunc ullamcorper euismod. Nunc diam dui, auctor sit amet lacus eu, egestas eleifend dolor. Nullam quis dui eu purus laoreet porttitor non quis elit. Quisque tristique, lectus at aliquet pellentesque, tellus diam maximus augue, nec porta dolor magna sed quam.
Suspendisse cursus rhoncus leo, sollicitudin vehicula leo aliquam vitae. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus malesuada rutrum sapien, eget luctus metus rhoncus sit amet. Vestibulum a porta ligula. Duis ac rhoncus est. Aliquam dapibus purus pharetra turpis finibus ultricies. Nulla facilisi.
Vivamus porttitor laoreet libero ut hendrerit. Sed maximus est leo, id mollis nunc luctus egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce ut ligula imperdiet, dapibus sapien a, sollicitudin libero. Cras ullamcorper arcu vitae magna euismod finibus. Donec at blandit turpis. Cras urna nulla, aliquam et metus varius, porta pulvinar tellus. Mauris ac erat rhoncus, finibus diam sit amet, maximus ipsum. Nullam in odio et ipsum congue lacinia. Quisque dignissim nisi eu nibh bibendum imperdiet. Cras non eros commodo, ullamcorper ligula a, aliquam arcu. Integer scelerisque suscipit ornare. Nam interdum pharetra libero ac aliquet. Aenean vestibulum massa vel ultrices dignissim. Sed eget aliquam magna. Morbi efficitur, lacus eu molestie finibus, diam libero rhoncus mi, ac rhoncus sem arcu at nisi.
Nunc non nisl eget odio hendrerit iaculis. Pellentesque faucibus posuere vestibulum. Donec rhoncus pretium maximus. Vivamus facilisis ultrices felis et accumsan. Donec eleifend lectus nunc. Suspendisse potenti. Donec in consectetur dolor.
Cras at nisi lobortis, bibendum sapien vel, fringilla dolor. Suspendisse tristique faucibus sem, id cursus lorem auctor ut. Aenean elementum tortor id purus blandit, ut blandit magna vulputate. Praesent ultrices nisl sit amet orci eleifend, pellentesque maximus justo euismod. Sed pharetra ipsum dolor, eu rutrum tellus volutpat ut. Praesent in ultrices felis, vel posuere felis. Nullam non semper nisi, nec accumsan turpis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst.
Proin consequat elementum sapien, ac maximus nisi sodales a. Fusce sollicitudin, lectus nec dapibus consequat, quam lorem iaculis dui, a luctus elit est quis ex. Vestibulum consequat eget erat et mollis. Proin nec porttitor dui. Sed laoreet facilisis odio, sed faucibus velit pulvinar dictum. Maecenas at nisi finibus, efficitur urna et, pretium justo. Quisque consequat sit amet metus vehicula imperdiet. Proin scelerisque vulputate imperdiet. Sed lacinia velit nec viverra hendrerit.
EOF


all_content.each_line do |content|
  post_attrs = {
                user: users.sample,
                title: content.split(" ").take(rand(3..5)).join(" "),
                content: content,
                likes: rand*100,
               }
  post = Post.create!(post_attrs)
  images = Dir.entries(Pathname( "./public/images").expand_path).reject { |d| d =~ /\A\.+\Z/}.map {|d| "/images/" + d}
  post.featured_image = FeaturedImage.create!(url: images.sample)

end
