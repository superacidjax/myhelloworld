course1 = Course.create!(name: 'Learning Ruby for Beginners', price: 10000, description:
  "Ruby is one of the most important languages on the web. Sites such as
  Twitter, Bloomberg, Fiver and thousands of others have been built using
  Ruby. Ruby is the programming language that is the basis for the web
  framework Ruby on Rails. It was originally developed in Japan and now
  has a huge international community.", video_url: '108074329', slug:
  'learning-ruby-for-beginners', level: 'Beginner', device: 'web', headline:
  'Get inside the web with Ruby.', new: true, programming_language: 'Ruby')

course2 = Course.create!(name: 'Build Your First iOS App', price: 30000, description:
  "Ever wanted to build an app? Are you a total beginner? This course is for you.
  With over 20 video lessons taking you from the very basics of getting started
  all the way through a finished photo sharing app -- this course will teach
  you the fundamentals of building iOS apps. You'll be learning Apple's new
  programming language Swift which is fun and powerful -- just like you.",
  video_url: '108074329', slug: 'build-your-first-ios-app', level: 'Beginner',
  device: 'iOS', headline: 'You can do this! You are more powerful than you think!',
  new: false, programming_language: 'Swift')

course3 = Course.create!(name: 'Your First Web Application', price: 20000, description:
  "Ever wanted to build a web application like Twitter? Do you have a great
  idea for a new website but don't know where to start? Are you a total beginner?
  This course is just for you!",
  video_url: '108074329', slug: 'your-first-web-application', level: 'Beginner',
  device: 'web', headline: "The next great web idea is yours. Now let's build it!",
  new: true, programming_language: 'Ruby & Javascript')

Lesson.create!(name: "1.1 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 1,
  duration: 20, course_id: course1.id)

Lesson.create!(name: "1.2 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 2,
  duration: 19, course_id: course1.id)

Lesson.create!(name: "1.3 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 3,
  duration: 19, course_id: course1.id)

Lesson.create!(name: "1.4 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 4,
  duration: 19, course_id: course1.id)

Lesson.create!(name: "2.1 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 5,
  duration: 19, course_id: course1.id)

Lesson.create!(name: "2.2 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 6,
  duration: 19, course_id: course1.id)

Lesson.create!(name: "2.3 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 7,
  duration: 19, course_id: course1.id)

Lesson.create!(name: "2.4 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 8,
  duration: 19, course_id: course1.id)

Lesson.create!(name: "2.5 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 9,
  duration: 19, course_id: course1.id)

Lesson.create!(name: "1.1 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 1,
  duration: 19, course_id: course2.id)

Lesson.create!(name: "1.2 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 2,
  duration: 19, course_id: course2.id)

Lesson.create!(name: "2.1 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 3,
  duration: 19, course_id: course2.id)

Lesson.create!(name: "2.2 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 4,
  duration: 19, course_id: course2.id)

Lesson.create!(name: "3.1 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 5,
  duration: 19, course_id: course2.id)

Lesson.create!(name: "3.2 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 6,
  duration: 19, course_id: course2.id)

Lesson.create!(name: "3.3 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 7,
  duration: 19, course_id: course2.id)

Lesson.create!(name: "1.1 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 1,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "1.2 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 2,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "2.6 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 10,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "1.3 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 3,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "1.4 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 4,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "2.1 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 5,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "2.2 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 6,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "2.3 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 7,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "2.4 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 8,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "3.5 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 15,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "2.5 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 9,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "3.1 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 11,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "3.2 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 12,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "3.3 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 13,
  duration: 19, course_id: course3.id)

Lesson.create!(name: "3.4 Installing Xcode and Setting Up Your System", description:
  "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic mumblecore
  chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh. Chambray
  typewriter plaid synth you probably haven't heard of them, cray Wes Anderson
  blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle polaroid.
  Craft beer salvia kale chips, tousled flexitari", video_url: '108074329',
  notes: "Brunch Vice banh mi, single-origin coffee fingerstache shabby chic
  mumblecore chia. Tofu lumbersexual listicle, DIY sustainable polaroid ugh.
  Chambray typewriter plaid synth you probably haven't heard of them, cray Wes
  Anderson blog. Pug salvia distillery, synth normcore Bushwick Blue Bottle
  polaroid. Craft beer salvia kale chips, tousled flexitarian +1 twee Austin
  lumbersexual single-origin coffee. Viral tattooed Odd Future, mustache
  McSweeney's plaid squid you probably haven't heard of them meh salvia photo
  booth craft beer. Kogi farm-to-table cliche aesthetic deep v fixie.", free: false,
  thumbnail_url: "https://i.vimeocdn.com/video/491672516_295x166.jpg", lesson_number: 14,
  duration: 19, course_id: course3.id)

user1 = User.create!(display_name: 'JessicaDear', email: 'jessicadear@example.com',
  password: 'password', password_confirmation: 'password', admin: false)

user2 = User.create!(display_name: 'Oliver Dear', email: 'oliverdear@example.com',
  password: 'password', password_confirmation: 'password', admin: false)

user3 = User.create!(display_name: 'sebastian', email: 'sebastian@example.com',
  password: 'password', password_confirmation: 'password', admin: false)

user4 = User.create!(display_name: 'Sofi Dear', email: 'sofidear@example.com',
  password: 'password', password_confirmation: 'password', admin: false)

user5 =User.create!(display_name: 'Brian Dear', email: 'brian@example.com',
  password: 'password', password_confirmation: 'password', admin: false)

DiscountCode.create!(discount_code: '20percent',
  expiration_date: Date.today + 200.years,
  description: 'This code provides 20% off!', discount_type: 'percent',
  discount_amount: 20)

DiscountCode.create!(discount_code: 'expired',
  expiration_date: Date.today - 1.day,
  description: 'This code is expired', discount_type: 'percent',
  discount_amount: 20)

DiscountCode.create!(discount_code: 'cancelled',
  expiration_date: Date.today + 500.years,
  description: 'This code is cancelled', discount_type: 'percent',
  discount_amount: 20, cancelled: true)

DiscountCode.create!(discount_code: '20dollarsoff',
  expiration_date: Date.today + 200.years,
  description: 'This code provides $20 off!', discount_type: 'subtraction',
  discount_amount: 2000)

Charge.create!(state: 'finished', stripe_id: 'ch_152L7wFxloPfUE823hm0uE4H',
  guid: "a620ee11-0991-4677-ba11-235fc2d15fd4", access_expiration_date:
  Date.today + 1.year, card_expiration: Date.today + 5.years,
  customer_id: '1241244', default_card: 'card_wwwnjnjn3335', amount: 10000,
  fee_amount: 3, course_id: course1.id, user_id: user1.id)

Charge.create!(state: 'finished', stripe_id: 'ch_152L27wFx2loPfUE823hm0uE4H',
  guid: "a620ee11-09291-4677-ba11-2235fc2d15fd4", access_expiration_date:
  Date.today + 1.year, card_expiration: Date.today + 5.years,
  customer_id: '124212144', default_card: 'card_wwwnjnj22n3335', amount: 10000,
  fee_amount: 3, course_id: course1.id, user_id: user5.id)

Charge.create!(state: 'finished', stripe_id: 'ch_152L7wFxloPfUE823hm0uE4H',
  guid: "a620ee11-0991-4677-ba11-235fc2d15fd4", access_expiration_date:
  Date.today + 1.year, card_expiration: Date.today + 5.years,
  customer_id: '1241244', default_card: 'card_wwwnjnjn3335', amount: 30000,
  fee_amount: 3, course_id: course2.id, user_id: user3.id)

Charge.create!(state: 'finished', stripe_id: 'ch_152L7w2FxloPfUE823hm0uE4H',
  guid: "a6220ee11-0991-4677-ba11-235fc2d15fd4", access_expiration_date:
  Date.today + 1.year, card_expiration: Date.today + 5.years,
  customer_id: '12411244', default_card: 'card_wwwnjnjn223335', amount: 30000,
  fee_amount: 3, course_id: course2.id, user_id: user2.id)

Charge.create!(state: 'finished', stripe_id: 'ch_152L7w2FxloPfUE823hm0uE4H',
  guid: "a6220ee11-0991-4677-ba11-235fc2d15fd4", access_expiration_date:
  Date.today + 1.year, card_expiration: Date.today + 5.years,
  customer_id: '12411244', default_card: 'card_wwwnjnjn223335', amount: 30000,
  fee_amount: 3, course_id: course2.id, user_id: user4.id)

Charge.create!(state: 'finished', stripe_id: 'ch_152L7wFxloPfUE823hm0uE4H',
  guid: "a620ee11-0991-4677-ba11-235fc2d15fd4", access_expiration_date:
  Date.today + 1.year, card_expiration: Date.today + 5.years,
  customer_id: '1241244', default_card: 'card_wwwnjnjn3335', amount: 30000,
  fee_amount: 3, course_id: course2.id, user_id: user5.id)

Charge.create!(state: 'finished', stripe_id: 'ch_152L7w2FxloPfUE823hm0uE4H',
  guid: "a6220ee11-0991-4677-ba11-235fc2d15fd4", access_expiration_date:
  Date.today + 1.year, card_expiration: Date.today + 5.years,
  customer_id: '12411244', default_card: 'card_wwwnjnjn223335', amount: 30000,
  fee_amount: 3, course_id: course2.id, user_id: user1.id)

Charge.create!(state: 'finished', stripe_id: 'ch_152L27wFxloPfUE823hm0uE4H',
  guid: "a620ee11-0991-4677-ba11-2235fc2d15fd4", access_expiration_date:
  Date.today + 1.year, card_expiration: Date.today + 5.years,
  customer_id: '12412144', default_card: 'card_wwwnjnj2n3335', amount: 20000,
  fee_amount: 3, course_id: course3.id, user_id: user2.id)

Charge.create!(state: 'finished', stripe_id: 'ch_152L27wFx2loPfUE823hm0uE4H',
  guid: "a620ee11-09291-4677-ba11-2235fc2d15fd4", access_expiration_date:
  Date.today + 1.year, card_expiration: Date.today + 5.years,
  customer_id: '124212144', default_card: 'card_wwwnjnj22n3335', amount: 10000,
  fee_amount: 3, course_id: course3.id, user_id: user5.id)

