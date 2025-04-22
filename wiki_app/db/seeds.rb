# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

WikiPost.create!(title: 'What is MCP? Is it an API?')
WikiPost.create!(title: 'RAG Concepts and Scalability')
WikiPost.create!(title: 'AI Chat Bots in Rails')
WikiPost.create!(title: 'What is Database Normalization?')
WikiPost.create!(title: 'MVC VS MVVM')
WikiPost.create!(title: 'Localization for Your Rails app')
WikiPost.create!(title: 'S3 Storage and Architecture')
WikiPost.create!(title: 'Caching Strategies for Your Rails App')
WikiPost.create!(title: 'Best Practices for Rails Security')
WikiPost.create!(title: 'What is a Vector Database?')

