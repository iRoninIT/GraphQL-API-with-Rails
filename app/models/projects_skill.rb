class ProjectsSkill < ApplicationRecord
  belongs_to :project, inverse_of: :projects_skills
  belongs_to :skill, inverse_of: :projects_skills
end
