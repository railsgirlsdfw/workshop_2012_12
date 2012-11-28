class Choice < ActiveRecord::Base
  attr_accessible :position, :question_id, :text
  belongs_to :question
end
