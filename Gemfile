source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'

gem 'graphiql-rails'
gem 'graphql'
gem 'graphql-activerecord'
gem 'graphql-batch'
gem 'graphql-query-resolver'
gem 'puma', '~> 3.7'
gem 'sqlite3'

group :development, :test do
  gem 'pry'
  gem 'ffaker'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
