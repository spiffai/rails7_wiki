# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

WikiPost.create!(
  title: 'What is MCP? Is it an API?',
  author: 'Alyssa Glasco',
  description: 'MCP is a framework for connecting to different AI models.',
  body: '<p>MCP (Model Connection Protocol) is a powerful framework that enables seamless integration with various AI models. Unlike a traditional API, MCP provides a standardized interface for connecting to multiple AI models while handling authentication, rate limiting, and response formatting automatically.</p>

<figure class="image"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/1920px-Cat_August_2010-4.jpg" alt="Example Cat Image" /><figcaption>Example image showing how MCP can process and analyze images</figcaption></figure>

<h3>Key features of MCP include:</h3>
<ul>
<li>Unified interface for multiple AI models</li>
<li>Built-in rate limiting and quota management</li>
<li>Automatic response formatting</li>
<li>Error handling and retry mechanisms</li>
<li>Model-specific optimizations</li>
</ul>

<p>MCP simplifies the process of working with AI models by providing a consistent interface regardless of the underlying model provider.</p>'
)
WikiPost.create!(
  title: 'RAG Concepts and Scalability',
  author: 'Martin Scorsese',
  description: 'RAG is stands for Retrieval-Augmented Generation.',
  body: 'Retrieval-Augmented Generation (RAG) is a powerful approach that combines the strengths of large language models with the ability to access and utilize external knowledge.

Key components of RAG:
1. Document Collection: Gathering and organizing relevant documents
2. Embedding Generation: Converting documents into vector representations
3. Retrieval System: Finding relevant information based on queries
4. Generation: Using retrieved information to generate accurate responses

Scaling RAG systems requires careful consideration of:
- Vector database selection
- Chunking strategies
- Embedding model choice
- Caching mechanisms
- Query optimization'
)
WikiPost.create!(
  title: 'AI Chat Bots in Rails',
  author: 'Quenten Tarantino',
  description: 'An AI chatbot that can answer questions based on a specific knowledge base is a valuable asset for organizations looking to automate customer interactions and improve overall user experiences.',
  body: 'Implementing AI chatbots in Rails applications involves several key components and considerations:

1. Model Integration:
   - OpenAI API integration
   - Hugging Face models
   - Local model deployment

2. Conversation Management:
   - Session handling
   - Context preservation
   - Message history

3. Rails Implementation:
```ruby
class ChatController < ApplicationController
  def create
    response = ChatService.new(params[:message]).process
    render json: { response: response }
  end
end
```

4. Background Processing:
   - Sidekiq for async responses
   - Caching for common queries
   - Rate limiting implementation'
)
WikiPost.create!(
  title: 'What is Database Normalization?',
  author: 'Alyssa Glasco',
  description: 'Database Normalization is a framework for building microservices in Rails.',
  body: 'Database normalization is a systematic approach to organizing database tables to minimize redundancy and dependency. It involves breaking down larger tables into smaller, more focused ones and establishing relationships between them.

The main normal forms are:

1NF (First Normal Form):
- Each table cell should contain a single value
- Each record needs to be unique

2NF (Second Normal Form):
- Must be in 1NF
- All non-key attributes are fully dependent on the primary key

3NF (Third Normal Form):
- Must be in 2NF
- No transitive dependencies

Benefits:
- Reduced data redundancy
- Better data integrity
- Easier maintenance
- More efficient updates'
)
WikiPost.create!(
  title: 'MVC VS MVVM',
  author: 'Quenten Tarantino',
  description: 'MVC VS MVVM is a framework for building microservices in Rails.',
  body: 'MVC (Model-View-Controller) and MVVM (Model-View-ViewModel) are architectural patterns that help organize code in different ways.

MVC Pattern:
- Model: Data and business logic
- View: User interface
- Controller: Handles user input and updates model/view

MVVM Pattern:
- Model: Data and business logic
- View: User interface
- ViewModel: View state and behavior

Key Differences:
1. Controller vs ViewModel
   - Controller: Direct user input handling
   - ViewModel: Data binding and state management

2. Data Flow:
   - MVC: Bidirectional between components
   - MVVM: More reactive, uses data binding

3. Testing:
   - MVC: Controller logic easily testable
   - MVVM: ViewModel provides better isolation'
)
WikiPost.create!(
  title: 'Localization for Your Rails app',
  author: 'Olivia Newton-John',
  description: 'Localization for Your Rails app is a framework for building microservices in Rails.',
  body: 'Rails provides robust internationalization (i18n) and localization (l10n) support out of the box. Here\'s how to implement it effectively:

1. Configuration:
```ruby
# config/application.rb
config.i18n.default_locale = :en
config.i18n.available_locales = [:en, :es, :fr]
```

2. Translation Files:
```yaml
# config/locales/en.yml
en:
  welcome: "Welcome"
  
# config/locales/es.yml
es:
  welcome: "Bienvenido"
```

3. Usage in Views:
```erb
<h1><%= t("welcome") %></h1>
```

4. Date/Time Formatting:
```ruby
l(Time.current, format: :long)
```

Best Practices:
- Use locale fallbacks
- Implement locale switching
- Consider plural rules
- Handle missing translations'
)
WikiPost.create!(
  title: 'S3 Storage and Architecture',
  author: 'Olivia Newton-John',
  description: 'S3 Storage and Architecture is a framework for building microservices in Rails.',
  body: 'Amazon S3 (Simple Storage Service) is a scalable object storage service. Here\'s how to effectively use it in Rails:

1. Configuration with Active Storage:
```ruby
# config/storage.yml
amazon:
  service: S3
  access_key_id: <%= Rails.application.credentials.dig(:aws, :access_key_id) %>
  secret_access_key: <%= Rails.application.credentials.dig(:aws, :secret_access_key) %>
  region: us-east-1
  bucket: your-bucket-name
```

2. Key Concepts:
- Buckets: Root containers
- Objects: Files and metadata
- Keys: Unique identifiers
- URLs: Access points

3. Best Practices:
- Use appropriate bucket policies
- Implement proper CORS settings
- Enable versioning for critical data
- Use CDN for better performance'
)
WikiPost.create!(
  title: 'Caching Strategies for Your Rails App',
  author: 'Martin Scorsese',
  description: 'Caching Strategies for Your Rails App is a framework for building microservices in Rails.',
  body: 'Effective caching is crucial for Rails application performance. Here are key caching strategies:

1. Page Caching:
```ruby
class HomeController < ApplicationController
  caches_page :index
end
```

2. Fragment Caching:
```erb
<% cache product do %>
  <%= render product %>
<% end %>
```

3. Russian Doll Caching:
```erb
<% cache ["v1", @post] do %>
  <%= render @post.comments %>
<% end %>
```

4. Low-Level Caching:
```ruby
Rails.cache.fetch("user-#{id}", expires_in: 12.hours) do
  User.expensive_query(id)
end
```

Best Practices:
- Use appropriate cache keys
- Set proper expiration times
- Monitor cache hit rates
- Consider cache warming strategies'
)
WikiPost.create!(
  title: 'Best Practices for Rails Security',
  author: 'Alyssa Glasco',
  description: 'Web application frameworks are made to help developers build web applications. Some of them also help you with securing the web application. In fact one framework is not more secure than another: If you use it correctly, you will be able to build secure apps with many frameworks. Ruby on Rails has some clever helper methods, for example against SQL injection, so this is hardly a problem.',
  body: 'Rails security best practices encompass various aspects of web application security:

1. SQL Injection Prevention:
```ruby
# Good
User.where(name: params[:name])

# Bad
User.where("name = #{params[:name]}")
```

2. XSS Protection:
- Use `html_escape` or `h` helper
- Content Security Policy (CSP)
- Proper HTML sanitization

3. CSRF Protection:
```ruby
protect_from_forgery with: :exception
```

4. Session Security:
- Secure session storage
- Proper session timeout
- Session fixation protection

5. Authentication:
- Use proven solutions (Devise)
- Implement 2FA
- Password complexity requirements

6. Authorization:
- Role-based access control
- Resource authorization
- API authentication'
)
WikiPost.create!(
  title: 'What is a Vector Database?',
  author: 'Olivia Newton-John',
  description: 'A vector database is a specialized database that stores and manages data represented as high-dimensional vectors, enabling efficient similarity searches and retrieval of related items.',
  body: 'Vector databases are specialized systems designed to store and query high-dimensional vectors efficiently.

Key Components:
1. Vector Embeddings:
   - Numerical representations of data
   - Generated by ML models
   - High-dimensional spaces

2. Similarity Search:
   - Cosine similarity
   - Euclidean distance
   - Approximate Nearest Neighbors (ANN)

3. Popular Solutions:
   - Pinecone
   - Weaviate
   - Milvus
   - FAISS

4. Use Cases:
   - Semantic search
   - Recommendation systems
   - Image similarity
   - Document retrieval

Implementation Considerations:
- Indexing strategies
- Dimensionality reduction
- Clustering approaches
- Query optimization'
)
