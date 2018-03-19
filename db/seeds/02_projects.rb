skills = Skill.all

5.times do
  project = Project.create(name: FFaker::Product.product)
  skills.sample(5).each do |skill|
    project.skills << skill
  end
end
