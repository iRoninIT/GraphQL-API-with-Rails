Types::SkillType = GraphQL::ObjectType.define do
  name 'Skill'

  backed_by_model :skill do
    attr :id
    attr :name
  end
end
