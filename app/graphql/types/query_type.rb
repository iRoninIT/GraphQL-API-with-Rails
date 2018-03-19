Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :candidates do
    argument :projectId, !types.ID
    type types[Types::CandidateType]
    resolve(proc do |_obj, args|
      project = Project.find(args['projectId'])
      project.candidates_projects
    end)
  end
  field :projects do
    type types[Types::ProjectType]
    resolve(proc { Project.all })
  end
end
