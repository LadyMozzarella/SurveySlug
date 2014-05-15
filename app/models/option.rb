class Option < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :question
  has_many :responses
end
