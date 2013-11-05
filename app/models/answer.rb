class Answer < ActiveRecord::Base
  attr_accessible :text

  has_many :answered_questions
  has_many :questions, through: :answered_questions
end
