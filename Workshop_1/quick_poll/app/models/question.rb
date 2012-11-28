class Question < ActiveRecord::Base
  attr_accessible :current, :text
  has_many :choices, :order => :position
  
  def self.current
    Question.where(:current => 1).limit(1).first
  end
end
