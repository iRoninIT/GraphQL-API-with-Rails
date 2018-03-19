class CandidatesSkill < ApplicationRecord
  belongs_to :candidate, inverse_of: :candidates_skills
  belongs_to :skill, inverse_of: :candidates_skills
end
