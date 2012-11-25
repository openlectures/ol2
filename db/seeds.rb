Subject.create(subject: "Chemistry")    #subject_id:1
Subject.create(subject: "Economics")    #subject_id:2
Subject.create(subject: "Mathematics")  #subject_id:3
Subject.create(subject: "Literature")   #subject_id:4
Subject.create(subject: "Physics")      #subject_id:5
Subject.create(subject: "Biology")      #subject_id:6
Subject.create(subject: "Geography")    #subject_id:7

#Economics - SEAB Syllabus
SEAB_Topic.create( topic: "Market System",
              description: "The emphasis of this section is on government objectives and policies relating to economic growth, employment, stability of prices and the balance of payments. It emphasises the use of the AD-AS approach as a tool for the analysis of fiscal, monetary and supply-side policies, and their impact at the micro and macro levels.",
              subject_id: "2",
) #seab_topic_id:1

SEAB_SubTopic.create( topic: "Scarcity, Choice and Opportunity Cost",
              seab_topic_id: "1",
) #seab_subtopic_id:1

SEAB_SubTopic.create( topic: "Resource Allocation in Competitive Markets",
              seab_topic_id: "1",
) #seab_subtopic_id:2

SEAB_SubTopic.create( topic: "Firms and How They Operate",
              seab_topic_id: "1",
) #seab_subtopic_id:3

SEAB_Topic.create( topic: "Market Failure and Government Intervention",
              description: "This theme examines the nature of market failure, its causes and possible policy remedies.",
              subject_id: "2",
) #seab_topic_id:2

SEAB_SubTopic.create( topic: "Market Failure",
              seab_topic_id: "2",
) #seab_subtopic_id:4

SEAB_SubTopic.create( topic: "Government Intervention in The Market",
              seab_topic_id: "2",
) #seab_subtopic_id:5

SEAB_Topic.create( topic: "National and International Economy",
              description: "This theme provides an introduction to the key indicators of economic performance, the basic AD/AS and AE-Income analysis, and the main objectives and instruments of government policy.",
              subject_id: "2",
) #seab_topic_id:3

SEAB_SubTopic.create( topic: "Key Economic Indicators",
              seab_topic_id: "3",
) #seab_subtopic_id:6

SEAB_SubTopic.create( topic: "How The Macroeconomy Works",
              seab_topic_id: "3",
) #seab_subtopic_id:7

SEAB_SubTopic.create( topic: "International Economics",
              seab_topic_id: "3",
) #seab_subtopic_id:8

#Economics - Topics
Topic.create( topic: "Price Discrimination",
              description: "",
              subject_id: "2",
              seab_subtopic_id: "2",
) #lesson_id:1

Topic.create( topic: "Fiscal Policy",
              description: "",
              subject_id: "2",
              seab_subtopic_id: "7",
) #lesson_id:2

Topic.create( topic: "Introduction to Economics and Scarcity",
              description: "",
              subject_id: "2",
              seab_subtopic_id: "1",
) #lesson_id:3

Topic.create( topic: "Demand and Supply",
              description: "",
              subject_id: "2",
              seab_subtopic_id: "2",
) #lesson_id:4

Topic.create( topic: "Theory of The Firm",
              description: "",
              subject_id: "2",
              seab_subtopic_id: "3",
) #lesson_id:5

Topic.create( topic: "Alternative Theories of The Firm",
              description: "",
              subject_id: "2",
              seab_subtopic_id: "3",
) #lesson_id:6

Topic.create( topic: "Market Structure",
              description: "",
              subject_id: "2",
              seab_subtopic_id: "5",
) #lesson_id:7

Topic.create( topic: "Efficiency of Different Market Structures",
              description: "",
              subject_id: "2",
              seab_subtopic_id: "5",
) #lesson_id:8

Topic.create( topic: "Market Failure",
              description: "",
              subject_id: "2",
              seab_subtopic_id: "4",
) #lesson_id:9

Topic.create( topic: "Government Intervention",
              description: "",
              subject_id: "2",
              seab_subtopic_id: "5",
) #lesson_id:10

Topic.create( topic: "Microeconomic Case Studies",
              description: "",
              subject_id: "2",
) #lesson_id:11

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

Lesson.create(  lesson: "You Demand",
                topic_id: "4",
                user_id: "1",
) #lesson_id:6

Lesson.create(  lesson: "I Supply",
                topic_id: "4",
                user_id: "1",
) #lesson_id:7

Lesson.create(  lesson: "The Markets",
                topic_id: "4",
                user_id: "1",
) #lesson_id:8

Lesson.create(  lesson: "Shifts",
                topic_id: "4",
                user_id: "1",
) #lesson_id:9

Lesson.create(  lesson: "Introduction to Market Failure",
                topic_id: "4",
                user_id: "1",
) #lesson_id:10

Lesson.create(  lesson: "Externalities",
                topic_id: "4",
                user_id: "1",
) #lesson_id:11

Lesson.create(  lesson: "Merit/Demerit Goods",
                topic_id: "4",
                user_id: "1",
) #lesson_id:12

Lesson.create(  lesson: "Public Goods",
                topic_id: "4",
                user_id: "1",
) #lesson_id:13


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
                   videourl: "https://www.youtube.com/watch?v=SVkHyCi9S8s",
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
                   videourl: "https://www.youtube.com/watch?v=4NpBAik2FTI",
                   objective: "How 1st degree price discrimination is like in the real world",
)

Questionanswer.create(  question: "Give an example of a firm that practises 1st degree price discrimination.",
                        answer: "Auctions, online auction sites.",
                        checkpoint_id: "4",
)

Checkpoint.create( checkpoint: "Block Pricing ",
                   lesson_id: "3",
                   description: "Here you will learn what is 2nd degree price discrimination, also known as block pricing.",
                   videourl: "https://www.youtube.com/watch?v=11dxQR577KE",
                   objective: "Describe and define 2nd degree price discrimination",
)

Questionanswer.create(  question: "In 2nd degree price discrimination, what determines the price a consumer pays?",
                        answer: "The quantity he/she buys (usually).",
                        checkpoint_id: "5",
)

Checkpoint.create( checkpoint: "How It Actually Happens",
                   lesson_id: "3",
                   description: "Now that you know what 2nd degree price discrimination is in theory, find out how it happens in real life.",
                   videourl: "https://www.youtube.com/watch?v=oC8TkIqfvwc",
                   objective: "How 2nd degree price discrimination is like in the real world",
)

Questionanswer.create(  question: "Give an example of a firm that practises 2nd degree price discrimination.",
                        answer: "Electricity and utilities providers, among others.",
                        checkpoint_id: "6",
)

Checkpoint.create( checkpoint: "It's all about Elasticity",
                   lesson_id: "4",
                   description: "This is the last type of price discrimination that you will learn about.",
                   videourl: "https://www.youtube.com/watch?v=VGtgsNh41hA",
                   objective: "Describe and define 3rd degree price discrimination",
)

Questionanswer.create(  question: "In 3rd degree price discrimination, why does each submarket pay a different price?",
                        answer: "Electricity and utilities providers, among others.",
                        checkpoint_id: "7",
)

Checkpoint.create( checkpoint: "Graph Drawing: How to Distribute Output",
                   lesson_id: "4",
                   description: "Here's some fun and interesting graph drawing! You will also find out how firms maximize their profits through 3rd degree price discrimination.",
                   videourl: "https://www.youtube.com/watch?v=AL35f2MgX1I",
                   objective: "Demonstrate how output is distributed between markets to maximize profits",
)

Questionanswer.create(  question: "How do we distribute output to each submarket?",
                        answer: "Such last unit sold in each market must give the same marginal revenue.",
                        checkpoint_id: "8",
)

Checkpoint.create( checkpoint: "In The Real World",
                   lesson_id: "4",
                   description: "Now that you know what 3rd degree price discrimination is in theory, find out how it happens in real life.",
                   videourl: "https://www.youtube.com/watch?v=zmMPZfZLY2o",
                   objective: "How 3rd degree price discrimination is like in the real world",
)

Questionanswer.create(  question: "Give an example of a firm that practises 3rd degree price discrimination.",
                        answer: "SMRT in Singapore, MacDonald's when it gives student discounts and many more!",
                        checkpoint_id: "9",
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
