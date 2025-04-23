# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

WikiPost.create!(title: 'What is MCP? Is it an API?', author: 'Alyssa Glasco', description: 'MCP is a framework for connecting to different AI models.')
WikiPost.create!(title: 'RAG Concepts and Scalability', author: 'Martin Scorsese', description: 'RAG is stands for Retrieval-Augmented Generation.')
WikiPost.create!(title: 'AI Chat Bots in Rails', author: 'Quenten Tarantino', description: 'An AI chatbot that can answer questions based on a specific knowledge base is a valuable asset for organizations looking to automate customer interactions and improve overall user experiences.')
WikiPost.create!(title: 'What is Database Normalization?', author: 'Alyssa Glasco', description: 'Database Normalization is a framework for building microservices in Rails.')
WikiPost.create!(title: 'MVC VS MVVM', author: 'Quenten Tarantino', description: 'MVC VS MVVM is a framework for building microservices in Rails.')
WikiPost.create!(title: 'Localization for Your Rails app', author: 'Olivia Newton-John', description: 'Localization for Your Rails app is a framework for building microservices in Rails.')
WikiPost.create!(title: 'S3 Storage and Architecture', author: 'Olivia Newton-John', description: 'S3 Storage and Architecture is a framework for building microservices in Rails.')
WikiPost.create!(title: 'Caching Strategies for Your Rails App', author: 'Martin Scorsese', description: 'Caching Strategies for Your Rails App is a framework for building microservices in Rails.')
WikiPost.create!(title: 'Best Practices for Rails Security', author: 'Alyssa Glasco', description: 'Web application frameworks are made to help developers build web applications. Some of them also help you with securing the web application. In fact one framework is not more secure than another: If you use it correctly, you will be able to build secure apps with many frameworks. Ruby on Rails has some clever helper methods, for example against SQL injection, so this is hardly a problem.')
WikiPost.create!(title: 'What is a Vector Database?', author: 'Olivia Newton-John', description: 'A vector database is a specialized database that stores and manages data represented as high-dimensional vectors, enabling efficient similarity searches and retrieval of related items.')
