# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
post = Post.create(title: 'Underemployment for the Next Generation Part#1',
                  body: %(We are increasingly wasting the potential of 
                  a huge portion of our population. Higher Education has 
                  increased exponentially in its importance, but many nations 
                  have not done enough to make it easily accessible to 
                  their populations. Currently, the costs of education 
                  can overwhelm ambitious youth, and potential future 
                  leaders, causing them to lose sight of their goals. 
                  The impediments to education manifest themselves by 
                  the high cost of college, the cost of pursuing 
                  internships, and dismal economic prospects for 
                  young people.  This high cost is often compounded 
                  by high unemployment and underemployment as seen in 
                  the US which has rates of 14.3% and 44% to go with 
                  an average student loan debt load of $33,000. 
                  These students pursued a higher education in the 
                  hopes of establishing fruitful careers and making a 
                  positive impact on the world. To waste these desires 
                  is disastrous to the future of the US.)
                         )


other_post = Post.create(title: 'Underemployment for the Next Generation Part#2',
                         body: %(It is not just the high costs of education that are 
                         impeding many young people. In today’s society, college 
                         students need to gain an increasing amount of work experience
                          from internships. Yet, internships are costly and usually do not 
                            offer pay, travel or meal compensation, or any benefits. In 
                            the US, internship credit costs as much as the tuition of a 
                            college course ranging $1000 per credit while students seeking 
                            work experience abroad can expect to pay around $6,500 just in 
                            fees. This situation effectively excludes students who need to 
                            work to finance their education or to support themselves. This 
                            exclusion dampens their job prospects and can lead them into 
                            jobs that offer lower pay, are not their desired fields, and 
                            impede their economic mobility. If one of the goals of the US 
                            government is to empower youth as positive economic and 
                            political actors, then we must ensure that they are able to 
                            access affordable education, are supported when they pursue 
                            valuable experiences through internships, and are set up to 
                            succeed in the workforce.The US should increase efforts to make 
                            internships affordable for all. Instead of mandating that 
                            internships either offer college credit or pay, which often 
                            leads to unpaid credit-only internships, there needs to be a 
                            way to decrease the cost of an internship and ensure that 
                            students are afforded either pay or travel compensation and 
                            some benefits.  If institutions for higher education would defer 
                            the credit hour costs for the internship class, or the place of 
                            business where the interning is taking place would cover the 
                            credit hours for that internship, this would help to reduce 
                            the student debt.)
                         )
other_post = Post.create(title: 'Underemployment for the Next Generation Part#3',
                         body: %(One possible solution to easing the expense of transportation 
                         can be seen in Leon County’s partnership with Star Metro which offers 
                         free public bus service throughout the city of Tallahassee to students 
                         with valid photo IDs. Also, there should be stricter limits on 
                         what schools can charge for internship credit and a greater push 
                         to set up more need based funds for students to pursue these 
                         opportunities. More programs that focus on training new graduates 
                         should also be established that are beneficial to new graduates 
                         i.e. mentorship programs, workforce training, career fairs, 
                         affordable cross-cultural work-study exchange programs, and 
                         inner-city outreach are just a few possibilities.
                         It may not be clear where the money will come from 
                         to fund affordable internship experience in the US, but there 
                         must be a more urgent dialogue on the issue. It is imperative 
                         that we make opportunities accessible to the next generation 
                         now so they may have a future in the workforce.))

4.times do
  post.comments.create(title: 'Nice post!',
                 body: %(Great article and good suggestions. It 
                 seems more people are starting to see how the no 
                 work/no experience paradox will affect the future)
                          )
end


3.times do
  post.comments.create(title: "Another issue!",
                 body: %(Equal pay for equal work too!)
                       )
end

3.times do
  other_post.comments.create(title: 'Shout out to the hard-workers!',
                 body: %(Hard-working individuals are the backbone 
                 of our society. We should support these hard-working 
                 individuals!))
end



comment_one = Comment.find(1)
comment_two = Comment.find(2)
comment_three = Comment.find(3)
comment_four = Comment.find(4)
comment_five = Comment.find(5)
comment_six = Comment.find(6)
comment_seven = Comment.find(7)
comment_eight = Comment.find(8)
comment_nine = Comment.find(9)
comment_ten = Comment.find(10)

odd_comments = [comment_one, comment_three, comment_five, comment_seven, comment_nine]
even_comments = [comment_two, comment_four, comment_six, comment_eight, comment_ten]


odd_comments.map { |comment| post.comments << comment }
even_comments.map { |comment| other_post.comments << comment }

post.save
other_post.save

p "Successfully executed seeds file"
