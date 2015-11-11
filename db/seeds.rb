# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  'Avocados contain more fat than any other fruit or vegetable. Also, the trees contain enzymes that prevent the fruit from ever ripening on the tree, allowing farmers to use the trees as storage devices for up to 7 months after they reach full maturity, allowing avocados to always be in season.',
  'Most Japanese schools do not employ janitors or custodians. The Japanese education system believes that requiring students to clean the school themselves teaches respect, responsibility, and emphasizes equality.',
  "Millionaire Michael O'Leary, CEO of airline Ryanair, has his own taxicab company with just one cab so he can legally use the bus lanes and avoid traffic jams.",
  'The current CEO of YouTube, Susan Wojcicki, is the woman who rented her garage to Larry Page and Sergey Brin in 1998 when they were creating Google.',
  'According to a poll in the year 2000, the Japanese believe that their best invention of the 20th century was instant noodles.',
  "Women can fly airplanes in Saudi Arabia, but can't drive cars.",
  'In 2012 a Manchester couple jokingly invited Queen Elizabeth to their wedding, the Queen accepted and made an appearance along with Prince Philip.',
  'In 1987, a guy bought a lifetime unlimited first class American Airlines ticket for $250,000. He flew over 10,000 flights costing the company $21,000,000. They terminated his ticket in 2008.',
  "In countries that don't have \"ranch\" dressing, that flavor is often described as \"American flavor\" when used in snack foods.",
  'Language learning site Duolingo makes its money from having its users practice translating a real-world document (e.g from CNN). Duolingo has contracts these websites to translate stories and is earning hundreds of thousands of dollars a year with this business model.',
  'If you die in Amsterdam without any friends or family left to attend your funeral, a poet will write a poem for you and recite it at your funeral.',
  "Mobile users in poor countries can access Wikipedia articles without data charges thanks to 'Wikipedia Zero'. It's currently operating in 34 countries.",
  "Dr. Seuss wrote 'The Cat in the Hat' to help combat illiteracy. 348 words were identified as being important to first-graders, which he was asked to narrow down to 250. Nine months later, Seuss used 236 of them to complete 'The Cat in the Hat'.",
  'You pay to have your star on the Walk of Fame in Hollywood. $30,000 to be precise.',
  'While free to watch online, the single ticket price for attending a TED talk starts at $8,500.',
  'Two Chicago men once tried to rob a restaurant with a squirt gun, but the owner told them he was too busy right now and to come back in an hour. They did. And the police were waiting for them.',
  'On an island in Indonesia, if a child dies before he has started teething, the baby is placed inside the trunk of a growing tree. The hole is then sealed and as the tree begins to heal, the child is believed to be absorbed. Dozens of babies may be interred within a single tree.',
  'Women are twice as likely to initiate a suicide attempt but Men a four times more likely to succeed.',
  'Most senior animators at Disney chose to work on Pocahontas rather than the Lion King as many at Disney had little faith in the project, leaving mostly first time animators to work on the Lion King.',
  'A lack of toilets costs India more than $50 billion a year, mostly through premature deaths and hygiene-related diseases.',
  'Chocolate milk was invented by an Irishman while visiting Jamaica in the 1680s. Locals mixed cocoa with water - which Hans Sloane found nauseating - so instead he mixed it with milk to make it more pleasant. He brought the recipe to England, where it was made and sold by pharmacists as medicine.'
].each do |content|
  existing_lesson = Lesson.find_by_content(content)

  if existing_lesson == nil
    Lesson.create!(content: content)
  end
end
