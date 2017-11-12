class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  # try this w/o referring to the docs
  validate :must_be_clickbait
  #validate :is_clickbait?

  @@clickbait_array = [
    "Won't Believe",
    "Secret",
    "Top ",
    "Guess"
  ]


   def must_be_clickbait

     # what was trippint me up is we are using a booean ennumberable as the condition
     # for an if statement...

     if title && @@clickbait_array.none? { |clickbait_word| title.include?(clickbait_word)}
       errors.add(:title, "must be clickbait")
     end

  end

  end
