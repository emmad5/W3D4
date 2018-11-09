# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  answer_choice_id :integer          not null
#  user_id          :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  
  validate :respondent_not_answered?
  
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
    
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
    
  has_one :question,
    through: :answer_choice,
    source: :question
    
  def respondent_not_answered? 
    unless self.sibling_responses.where('user_id = (?)', self.user_id).empty?
      errors[:voter_fraud] << "Can't vote twice!"
    end 
  end
  
  def sibling_responses
    self.question.responses.where.not('responses.id =(?)', self.id)
  end

end
