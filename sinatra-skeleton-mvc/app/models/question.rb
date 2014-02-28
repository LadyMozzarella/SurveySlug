class Question < ActiveRecord::Base
  validates_presence_of :prompt
  belongs_to :survey
end
