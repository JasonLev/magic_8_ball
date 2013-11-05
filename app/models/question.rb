class Question < ActiveRecord::Base
  attr_accessible :text

  has_many :answered_questions
  has_many :answers, through: :answered_questions
end
