class Grade < ActiveRecord::Base
  belongs_to :student


  validates :assignment_name, presence: true
  validates :date, presence: true
  validates :student_id, presence: true
  validates :grade, presence: true
end
