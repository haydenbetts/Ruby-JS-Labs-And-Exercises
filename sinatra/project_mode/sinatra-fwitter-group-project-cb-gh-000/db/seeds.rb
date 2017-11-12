users_list = [
  {name: "Megan Amram", password: "good_morning"},
  {name: "Dril", password: "good_morning"},
  {name: "Chris Onstad", password: "good_morning"}
]

users_list.each do |user_attributes|
  u = User.create(user_attributes)
end

tweets_list = [
  {content: %q[Love is finding an emergency contact you can have sex with],
   user_id: User.find_by(name: "Megan Amram").id},
  {content: %q[I named my boobs "Rosh Hashanah" and "Yom Kippur" because one's a slightly bigger holiday],
    user_id: User.find_by(name: "Megan Amram").id},
  {content: %q[Just binge watched a whole pizza],
    user_id: User.find_by(name: "Megan Amram").id},
  {content: %q[I call my vagina "New Yorker cartoon" because it's dry and a handful of people have laughed at it],
    user_id: User.find_by(name: "Megan Amram").id},
  {content: %q[When singers at concerts hold out the mic for the audience to sing, it's like what am i, your maid],
    user_id: User.find_by(name: "Megan Amram").id},
  {content: %q[if you ask me this election could end about 100 different ways:  \n 1) trump gets 0% of the vote \n 2) trump gets 1% of the vote \n 3) trump gets 2% o \n],
    user_id: User.find_by(name: "Dril").id},
  {content: %q[the worst part of having an ass is always, having to wipe the damn thing. the best part of having an ass is shitting. #ElectionFinalThoughts],
    user_id: User.find_by(name: "Dril").id},
  {content: %q[here are this year's Vote Multiplers for election day. no, they do not stack \n policeman - 10x \n army man -12x \n verified acct - 15x \n Asexual - 18x],
    user_id: User.find_by(name: "Dril").id},
  {content: %q[accosted by several of my followers last night.. would nnot fuck off, awful, screeching voices..overpowering urine smell. Terrible. Terrible],
    user_id: User.find_by(name: "Dril").id},
  {content: %q[playing russian roullette and its my turn) \n hasta the vista mother fucker \n (shoots the other guy)],
    user_id: User.find_by(name: "Dril").id},
  {content: %q[i'm the guy who sucks... plus I got depression],
    user_id: User.find_by(name: "Chris Onstad").id},
  {content: %q[i'm still a little afraid of the police],
    user_id: User.find_by(name: "Chris Onstad").id},
  {content: %q[hey phillipe, open your mouth. Okay, Teodor!],
    user_id: User.find_by(name: "Chris Onstad").id},
  {content: %q[wait uh how rude exactly we talkin about here ray? The RUDEST!],
    user_id: User.find_by(name: "Chris Onstad").id}
]

tweets_list.each do |tweet|
  Tweet.create(tweet)
end
