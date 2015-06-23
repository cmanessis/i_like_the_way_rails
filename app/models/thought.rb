class Thought < ActiveRecord::Base

  belongs_to :user

def thought_example() do
  ['You’re an excellent cook',
  'You’re an excellent artist',
  'You’re an excellent teacher',
  'You’re an excellent athlete',
  'You’re a great laugh',
  'I like the way you are',
  'You have a great sense of style',
  'Thanks for being there for me',
  'Your kids are so nice'].sample
end

end
end
