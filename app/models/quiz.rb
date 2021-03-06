class Quiz < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :topic
  has_many :questions
  has_one :difficulty
end
