Types::CandidateType = GraphQL::ObjectType.define do
  name 'Candidate'

  field :id, !types.ID, property: :candidate_id
  field :fullname, types.String do
    resolve(proc do |obj|
      RecordLoader.for(Candidate).load(obj.candidate_id)
                  .then(&:fullname)
    end)
  end
  field :matchedSkills, types[types.String] do
    resolve(proc { |obj| obj.matched_skills.split(',') })
  end
  field :matchedSkillsNo, types.Int, property: :matched_skills_no
  field :experience, types.Int
end
