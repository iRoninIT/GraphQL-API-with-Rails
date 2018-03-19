class Project < ApplicationRecord
  has_many :candidates_projects, inverse_of: :project, dependent: :destroy
  has_many :candidates, through: :candidates_projects
  has_many :projects_skills, inverse_of: :project, dependent: :destroy
  has_many :skills, through: :projects_skills
end
