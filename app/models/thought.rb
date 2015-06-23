class Thought < ActiveRecord::Base

  belongs_to :user
  belongs_to :target

def thought_example
  array = ['You are an excellent cook',
  'You are an excellent artist',
  'You are an excellent teacher',
  'You are an excellent athlete',
  'You are a great laugh',
  'I like the way you are',
  'You have a great sense of style',
  'Thanks for being there for me',
  'Your kids are so nice',
  'You are an excellent cook',
  'You are an excellent artist',
  'You are an excellent teacher',
  'You are an excellent athlete',
  'You are a great laugh',
  'I like the way you are',
  'You have a great sense of style',
  'Thanks for being there for me',
  'Your kids are so nice',
  'Your kids are so thoughtful',
  'Your kids are so well-behaved',
  'Your smile brightens the room',
  'Have you lost weight?',
  'Your home feels so inviting',
  'You deserve a promotion',
  'You make me want to be a better person',
  'You look so young',
  'I like your aura',
  'Thank you',
  'You are beautiful',
  'You are an awesome mom',
  'You are so good at your job',
  'I like that shirt on you',
  'You take such good care of our family',
  'I sure love you',
  'I am so glad I married you',
  'I am so proud of you',
  'You are so hot',
  'Thanks for fixing the broken dryer',
  'You can always make me laugh',
  'You are so strong',
  'I love spending time with you',
  'I do not know what to say but I care about you',
  'You rock!',
  'You are my favourite',
  'You light up my world',
  'You are an angel fallen from the sky',
  'Do you remember the time',
  'I miss you',
  'Sending you a big hug']
  array.sample
end

end
