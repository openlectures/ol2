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
  )

Topic.create( topic: "Market Failure and Government Intervention",
        description: "This theme examines the nature of market failure, its causes and possible policy remedies.",
        subject_id: "2",
  )

Topic.create( topic: "National and International Economy",
        description: "This theme provides an introduction to the key indicators of economic performance, the basic AD/AS and AE-Income analysis, and the main objectives and instruments of government policy.",
        subject_id: "2",
  )

#Economics - Lessons
Lesson.create(  lesson: "Scarcity, Choice and Opportunity Cost",
        topic_id: "1",
        user_id: "1",
  )

Lesson.create(  lesson: "Resource Allocation in Competitive Markets",
        topic_id: "1",
        user_id: "1",
  )

Lesson.create(  lesson: "Price Discrimination",
        topic_id: "1",
        user_id: "1",
        is_sublesson: true,
  )

Lesson.create(  lesson: "Firms and How They Operate",
        topic_id: "1",
        user_id: "1",
  )