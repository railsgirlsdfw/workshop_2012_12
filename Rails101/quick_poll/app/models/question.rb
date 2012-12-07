class Question < ActiveRecord::Base
  attr_accessible :current, :text
  has_many :choices
end
