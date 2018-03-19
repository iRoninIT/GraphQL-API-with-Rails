TalentMacherApiSchema = GraphQL::Schema.define do
  # Set up the graphql-batch gem
  lazy_resolve(Promise, :sync)
  use GraphQL::Batch

  # mutation(Types::MutationType)
  query(Types::QueryType)
end
