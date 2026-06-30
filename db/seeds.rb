user = User.find_or_create_by!(email: "bookclub@example.com") do |u|
  u.password = "password"
  u.password_confirmation = "password"
end

Post.find_or_create_by!(title: "The Roman Numeral III Sketchbook") do |post|
  post.user = user
  post.body = <<~MARKDOWN
    Welcome to **The Book Club** — our space to document what we've found.

  ## The discovery

  A coworker found a strange sketchbook at a thrift store. Its pages are filled with missing children notices cut from magazines and newspapers, glued in place like a grim collage.

  ## What we know so far

  - The book is marked with **Roman numeral III** on the cover
  - We've traced it to the thrift store where it was purchased, and the original **Hobby Lobby** it came from
  - The clippings appear to be **no older than 2011**, cross-referenced with coupon dates on the backs of several cutouts

  ## What's next

  We'll use this blog to share findings as we dig deeper — dates, locations, patterns, and whatever else turns up.

  Stay tuned.
  MARKDOWN
end

puts "Seeded #{User.count} user(s) and #{Post.count} post(s)."
puts "Sign in with: bookclub@example.com / password"
