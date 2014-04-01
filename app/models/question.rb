# == Schema Information
#
# Table name: questions
#
#  id                :integer          not null, primary key
#  original_question :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class Question < ActiveRecord::Base
  has_many :answers
  has_many :users, through: :answers
end
