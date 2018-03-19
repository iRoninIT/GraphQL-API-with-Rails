class CandidatesProject < ApplicationRecord
  belongs_to :candidate, inverse_of: :candidates_projects
  belongs_to :project, inverse_of: :candidates_projects
end
