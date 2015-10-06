class Student < ActiveRecord::Base
  belongs_to :Teacher
  has_many :guardians
  has_many :grades
  
end
