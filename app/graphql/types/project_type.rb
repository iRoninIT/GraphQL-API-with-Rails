Types::ProjectType = GraphQL::ObjectType.define do
  name 'Project'

  backed_by_model :project do
    attr :id
    attr :name
  end

  field :skills, types[Types::SkillType], resolve: (proc do |obj|
    AssociationLoader.for(Project, :skills).load(obj)
  end)
end
