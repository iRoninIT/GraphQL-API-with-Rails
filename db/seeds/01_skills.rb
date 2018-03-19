skill_names = ['Ruby', 'Ruby on Rails', 'Node.js',
               'Elixir', 'Phoenix', 'React', 'Vue.js', 'Ember']

skill_names.each do |skill_name|
  Skill.find_or_create_by(name: skill_name)
end
