class Candidate < ApplicationRecord
  has_many :candidates_skills, inverse_of: :candidate, dependent: :destroy
  has_many :skills, through: :candidates_skills
  has_many :candidates_projects, inverse_of: :candidate, dependent: :destroy
  has_many :projects, through: :candidates_projects
end
