Subject.create(subject: "Chemistry")    #subject_id:1
Subject.create(subject: "Economics")    #subject_id:2
Subject.create(subject: "Mathematics")  #subject_id:3
Subject.create(subject: "Literature")   #subject_id:4
Subject.create(subject: "Physics")      #subject_id:5
Subject.create(subject: "Biology")      #subject_id:6
Subject.create(subject: "Life")         #subject_id:7

#Economics - Topics
Topic.create( topic: "Market System",
              description: "The emphasis of this section is on government objectives and policies relating to economic growth, employment, stability of prices and the balance of payments. It emphasises the use of the AD-AS approach as a tool for the analysis of fiscal, monetary and supply-side policies, and their impact at the micro and macro levels.",
              subject_id: "2",
) #lesson_id:

Topic.create( topic: "Market Failure and Government Intervention",
              description: "This theme examines the nature of market failure, its causes and possible policy remedies.",
              subject_id: "2",
) #lesson_id:

Topic.create( topic: "National and International Economy",
              description: "This theme provides an introduction to the key indicators of economic performance, the basic AD/AS and AE-Income analysis, and the main objectives and instruments of government policy.",
              subject_id: "2",
) #lesson_id:

#Economics - Lessons
Lesson.create(  lesson: "Scarcity, Choice and Opportunity Cost",
                topic_id: "1",
                user_id: "1",
) #lesson_id:1

Lesson.create(  lesson: "Resource Allocation in Competitive Markets",
                topic_id: "1",
                user_id: "1",
) #lesson_id:2

Lesson.create(  lesson: "Introduction to Price Discrimination",
                topic_id: "1",
                user_id: "1",
                is_sublesson: true,
) #lesson_id:3

Lesson.create(  lesson: "First Degree Price Discrimination",
                topic_id: "1",
                user_id: "1",
                is_sublesson: true,
) #lesson_id:4

Lesson.create(  lesson: "Second Degree Price Discrimination",
                topic_id: "1",
                user_id: "1",
                is_sublesson: true,
) #lesson_id:5

Lesson.create(  lesson: "Third Degree Price Discrimination",
                topic_id: "1",
                user_id: "1",
                is_sublesson: true,
) #lesson_id:6

Lesson.create(  lesson: "Applications of Price Discrimination",
                topic_id: "1",
                user_id: "1",
                is_sublesson: true,
) #lesson_id:7

Lesson.create(  lesson: "Firms and How They Operate",
                topic_id: "1",
                user_id: "1",
) #lesson_id:8

Checkpoint.create( checkpoint: "Spotting the Price Discrimination",
                   lesson_id: "3",
                   description: "Here you will find out what price discrimination really means and how you can spot it.",
                   videourl: "http://www.youtube.com/watch?v=0hPGoFUykrE",
                   objective: "Define price discrimination precisely",
)

Questionanswer.create(  question: "Is it price-discrimination when oranges from Fairprice Finest @ Somerset costs more than those from your neighbourhood Fairprice?",
                        answer: "It all depends on whether there is a difference in the production costs. In this case, downtown rental rates are a lot more expensive and may account for the price difference observed.",
                        checkpoint_id: "1",
)

Checkpoint.create( checkpoint: "Necessary Conditions",
                   lesson_id: "3",
                   description: "Firms aren't always able to engage in price-discrimination. For firms to be able to price-discriminate, these are the market conditions that must be met.",
                   videourl: "http://www.youtube.com/watch?v=PNdo0oYfSCU",
                   objective: "State market conditions necessary for firms to be able to price-discriminate",
)

Questionanswer.create(  question: "Is price discrimination possible under perfect competition?",
                        answer: "No.",
                        checkpoint_id: "2",
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
              phone: "",
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
              phone: "",
            )
u.save!(validate: false)
