# == Schema Information
#
# Table name: answers
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  question_id  :integer
#  saved_answer :string(255)
#  value        :boolean          default(FALSE)
#  created_at   :datetime
#  updated_at   :datetime
#

class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
end
