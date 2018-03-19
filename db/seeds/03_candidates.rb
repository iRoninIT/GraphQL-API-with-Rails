skills = Skill.all

10.times do
  candidate = Candidate.create(fullname: FFaker::Name.name)
  skills.sample(5).each do |skill|
    candidate.candidates_skills.create(skill: skill, experience: rand(5))
  end
end
