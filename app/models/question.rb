class Question < ActiveRecord::Base
  validates_presence_of :prompt
  belongs_to :survey
  has_many :options
end
