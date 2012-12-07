class Choice < ActiveRecord::Base
  attr_accessible :count, :position, :question_id, :text
  belongs_to :question
  
  def display_count
    count || 0
  end
end
