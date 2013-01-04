#User Creation
u = User.new( email: "jethrokuan95@gmail.com",
              password: "openlectures",
              password_confirmation: "openlectures",
              title: "Chief Technology Officer",
              given_name: "Jethro",
              surname: "Kuan",
              grad_year: "2013",
              school: "Raffles Junior College (RJC)",
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
              phone: "82238966",
            )
u.save!(validate: false)
