Subject.create(subject: "Chemistry")    #subject_id:1
Subject.create(subject: "Economics")    #subject_id:2
Subject.create(subject: "Mathematics")  #subject_id:3
Subject.create(subject: "Literature")   #subject_id:4
Subject.create(subject: "Physics")      #subject_id:5
Subject.create(subject: "Biology")      #subject_id:6
Subject.create(subject: "Life")         #subject_id:7

#Economics - Topics
Topic.create( topic: "Price Discrimination",
              description: "ABC",
              subject_id: "2",
) #lesson_id:1

Topic.create( topic: "Fiscal Policy",
              description: "ABC",
              subject_id: "2",
) #lesson_id:2

Topic.create( topic: "Elasticities",
              description: "ABC",
              subject_id: "2",
) #lesson_id:3

#Economics - Lessons
Lesson.create(  lesson: "Introduction to Price Discrimination",
                topic_id: "1",
                user_id: "1",
) #lesson_id:1

Lesson.create(  lesson: "First Degree Price Discrimination",
                topic_id: "1",
                user_id: "1",
) #lesson_id:2

Lesson.create(  lesson: "Second Degree Price Discrimination",
                topic_id: "1",
                user_id: "1",
) #lesson_id:3

Lesson.create(  lesson: "Third Degree Price Discrimination",
                topic_id: "1",
                user_id: "1",
) #lesson_id:4

Lesson.create(  lesson: "Applications of Price Discrimination",
                topic_id: "1",
                user_id: "1",
) #lesson_id:5

Checkpoint.create( checkpoint: "Spotting the Price Discrimination",
                   lesson_id: "1",
                   description: "Here you will find out what price discrimination really means and how you can spot it.",
                   videourl: "http://www.youtube.com/watch?v=0hPGoFUykrE",
                   objective: "Define price discrimination precisely",
)

Questionanswer.create(  question: "Is it price-discrimination when oranges from Fairprice Finest @ Somerset costs more than those from your neighbourhood Fairprice?",
                        answer: "It all depends on whether there is a difference in the production costs. In this case, downtown rental rates are a lot more expensive and may account for the price difference observed.",
                        checkpoint_id: "1",
)

Checkpoint.create( checkpoint: "Necessary Conditions",
                   lesson_id: "1",
                   description: "Firms aren't always able to engage in price-discrimination. For firms to be able to price-discriminate, these are the market conditions that must be met.",
                   videourl: "http://www.youtube.com/watch?v=PNdo0oYfSCU",
                   objective: "State market conditions necessary for firms to be able to price-discriminate",
)

Questionanswer.create(  question: "Is price discrimination possible under perfect competition?",
                        answer: "No.",
                        checkpoint_id: "2",
)

Checkpoint.create( checkpoint: "To Each His Own Price",
                   lesson_id: "2",
                   description: "This is the first kind of price discrimination you will learn. It takes discrimination to a whole new level...",
                   videourl: "https://www.youtube.com/watch?v=SVkHyCi9S8s&feature=plcp",
                   objective: "Describe and define 1st degree price discrimination",
)

Questionanswer.create(  question: "In 1st degree price discrimination, a firm charges each consumer for each unit the maximum/minimum price which
that consumer is willing to pay?",
                        answer: "Think of what the stall keeper is trying to make buyers reveal when haggling over prices!",
                        checkpoint_id: "3",
)

Checkpoint.create( checkpoint: "In The Real World",
                   lesson_id: "2",
                   description: "Now that you know what 1st degree price discrimination is in theory, find out how it happens in real life.",
                   videourl: "https://www.youtube.com/watch?v=4NpBAik2FTI&feature=plcp",
                   objective: "How 1st degree price discrimination is like in the real world",
)

Questionanswer.create(  question: "Give an example of a firm that practises 1st degree price discrimination.",
                        answer: "Auctions, online auction sites.",
                        checkpoint_id: "4",
)

Checkpoint.create( checkpoint: "Block Pricing ",
                   lesson_id: "3",
                   description: "Here you will learn what is 2nd degree price discrimination, also known as block pricing.",
                   videourl: "https://www.youtube.com/watch?v=11dxQR577KE&feature=plcp",
                   objective: "Describe and define 2nd degree price discrimination",
)

Questionanswer.create(  question: "In 2nd degree price discrimination, what determines the price a consumer pays?",
                        answer: "The quantity he/she buys (usually).",
                        checkpoint_id: "5",
)

Checkpoint.create( checkpoint: "How It Actually Happens",
                   lesson_id: "3",
                   description: "Now that you know what 2nd degree price discrimination is in theory, find out how it happens in real life.",
                   videourl: "https://www.youtube.com/watch?v=oC8TkIqfvwc&feature=plcp",
                   objective: "How 2nd degree price discrimination is like in the real world",
)

Questionanswer.create(  question: "Give an example of a firm that practises 2nd degree price discrimination.",
                        answer: "Electricity and utilities providers, among others.",
                        checkpoint_id: "6",
)

Checkpoint.create( checkpoint: "It's all about Elasticity",
                   lesson_id: "4",
                   description: "This is the last type of price discrimination that you will learn about.",
                   videourl: "https://www.youtube.com/watch?v=VGtgsNh41hA&feature=plcp",
                   objective: "Describe and define 3rd degree price discrimination",
)

Questionanswer.create(  question: "In 3rd degree price discrimination, why does each submarket pay a different price?",
                        answer: "Electricity and utilities providers, among others.",
                        checkpoint_id: "7",
)

Checkpoint.create( checkpoint: "Graph Drawing: How to Distribute Output",
                   lesson_id: "4",
                   description: "Here's some fun and interesting graph drawing! You will also find out how firms maximize their profits through 3rd degree price discrimination.",
                   videourl: "https://www.youtube.com/watch?v=AL35f2MgX1I&feature=plcp",
                   objective: "Demonstrate how output is distributed between markets to maximize profits",
)

Questionanswer.create(  question: "How do we distribute output to each submarket?",
                        answer: "Such last unit sold in each market must give the same marginal revenue.",
                        checkpoint_id: "8",
)

Checkpoint.create( checkpoint: "In The Real World",
                   lesson_id: "4",
                   description: "Now that you know what 3rd degree price discrimination is in theory, find out how it happens in real life.",
                   videourl: "https://www.youtube.com/watch?v=zmMPZfZLY2o&feature=plcp",
                   objective: "How 3rd degree price discrimination is like in the real world",
)

Questionanswer.create(  question: "Give an example of a firm that practises 3rd degree price discrimination.",
                        answer: "SMRT in Singapore, MacDonald's when it gives student discounts and many more!",
                        checkpoint_id: "9",
)
#Example Summary
Summary.create( summary: "SUMMARY HERE",
                lesson_id: "1",
              )

#User Creation
u = User.new( email: "jethrokuan95@gmail.com",
              password: "openlectures",
              password_confirmation: "openlectures",
              title: "Chief Technology Officer",
              given_name: "Jethro",
              surname: "Kuan",
              grad_year: "2013",
              school: "Raffles Junior College (RJC)",
              role: "admin",
              phone: "82925511",
            )
u.save!(validate: false)

u = User.new( email: "kenlimmj@gmail.com",
              password: "openlectures",
              password_confirmation: "openlectures",
              title: "Chief Executive Officer",
              given_name: "Kenneth",
              surname: "Lim",
              grad_year: "2010",
              school: "NUS High School of Math and Science (NUSHS)",
              role: "admin",
              phone: "92335594",
            )
u.save!(validate: false)

u = User.new( email: "garyleecf@gmail.com",
              password: "openlectures",
              password_confirmation: "openlectures",
              title: "Chief Academics Officer",
              given_name: "Gary",
              surname: "Lee",
              grad_year: "2010",
              school: "NUS High School of Math and Science (NUSHS)",
              role: "admin",
              phone: "96977054",
            )
u.save!(validate: false)

u = User.new( email: "suhangdageek@gmail.com",
              password: "openlectures",
              password_confirmation: "openlectures",
              title: "Chief Designer",
              given_name: "Hang",
              surname: "Su",
              grad_year: "2012",
              school: "NUS High School of Math and Science (NUSHS)",
              role: "admin",
              phone: "82227051",
            )
u.save!(validate: false)

u = User.new( email: "cjmg2006@gmail.com",
              password: "openlectures",
              password_confirmation: "openlectures",
              title: "Chief Outreach Officer",
              given_name: "Gloria",
              surname: "Chua",
              grad_year: "2012",
              school: "NUS High School of Math and Science (NUSHS)",
              role: "admin",
              phone: "83227062",
            )
u.save!(validate: false)

u = User.new( email: "samantha.ting@gmail.com",
              password: "openlectures",
              password_confirmation: "openlectures",
              title: "Chief Communications Officer",
              given_name: "Samantha",
              surname: "Ting",
              grad_year: "2012",
              school: "NUS High School of Math and Science (NUSHS)",
              role: "admin",
              phone: "82238966",
            )
u.save!(validate: false)
