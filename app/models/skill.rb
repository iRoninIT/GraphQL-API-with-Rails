class Skill < ApplicationRecord
  has_many :candidates_skills, inverse_of: :skill, dependent: :destroy
  has_many :candidates, through: :candidates_skills
  has_many :projects_skills, inverse_of: :skill, dependent: :destroy
  has_many :projects, through: :projects_skills
end
