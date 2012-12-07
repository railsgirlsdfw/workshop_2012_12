class Choice < ActiveRecord::Base
  attr_accessible :count, :position, :question_id, :text
  belongs_to :question
end
