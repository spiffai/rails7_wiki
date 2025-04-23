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
  body: '<p>Retrieval-Augmented Generation (RAG) is a powerful approach that combines the strengths of large language models with the ability to access and utilize external knowledge.</p>

<h3>Key components of RAG:</h3>
<ol>
<li>Document Collection: Gathering and organizing relevant documents</li>
<li>Embedding Generation: Converting documents into vector representations</li>
<li>Retrieval System: Finding relevant information based on queries</li>
<li>Generation: Using retrieved information to generate accurate responses</li>
</ol>

<h3>Scaling RAG systems requires careful consideration of:</h3>
<ul>
<li>Vector database selection</li>
<li>Chunking strategies</li>
<li>Embedding model choice</li>
<li>Caching mechanisms</li>
<li>Query optimization</li>
</ul>'
)
WikiPost.create!(
  title: 'AI Chat Bots in Rails',
  author: 'Quenten Tarantino',
  description: 'An AI chatbot that can answer questions based on a specific knowledge base is a valuable asset for organizations looking to automate customer interactions and improve overall user experiences.',
  body: '<p>Implementing AI chat bots in Rails applications requires careful consideration of several key aspects:</p>

<h3>1. Model Selection:</h3>
<ul>
<li>GPT-3.5/4</li>
<li>Claude</li>
<li>Local models</li>
</ul>

<h3>2. Integration Approaches:</h3>
<ul>
<li>Direct API calls</li>
<li>Queue-based processing</li>
<li>Streaming responses</li>
</ul>

<h3>3. Key Features:</h3>
<ul>
<li>Real-time chat</li>
<li>Message history</li>
<li>Error handling</li>
<li>Rate limiting</li>
</ul>

<h3>4. Security Considerations:</h3>
<ul>
<li>API key management</li>
<li>User authentication</li>
<li>Input validation</li>
<li>Output sanitization</li>
</ul>

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
  body: '<p>Database normalization is a systematic approach to organizing database tables to minimize redundancy and dependency. It involves breaking down larger tables into smaller, more focused ones and establishing relationships between them.</p>

<h3>The main normal forms are:</h3>

<h4>1NF (First Normal Form):</h4>
<ul>
<li>Each table cell should contain a single value</li>
<li>Each record needs to be unique</li>
</ul>

<h4>2NF (Second Normal Form):</h4>
<ul>
<li>Must be in 1NF</li>
<li>All non-key attributes are fully dependent on the primary key</li>
</ul>

<h4>3NF (Third Normal Form):</h4>
<ul>
<li>Must be in 2NF</li>
<li>No transitive dependencies</li>
</ul>

<h3>Benefits:</h3>
<ul>
<li>Reduced data redundancy</li>
<li>Better data integrity</li>
<li>Easier maintenance</li>
<li>More efficient updates</li>
</ul>'
)
WikiPost.create!(
  title: 'MVC VS MVVM',
  author: 'Quenten Tarantino',
  description: 'MVC VS MVVM is a framework for building microservices in Rails.',
  body: '<p>MVC (Model-View-Controller) and MVVM (Model-View-ViewModel) are architectural patterns that help organize code in different ways.</p>

<h3>MVC Pattern:</h3>
<ul>
<li><strong>Model:</strong> Data and business logic</li>
<li><strong>View:</strong> User interface</li>
<li><strong>Controller:</strong> Handles user input and updates model/view</li>
</ul>

<h3>MVVM Pattern:</h3>
<ul>
<li><strong>Model:</strong> Data and business logic</li>
<li><strong>View:</strong> User interface</li>
<li><strong>ViewModel:</strong> View state and behavior</li>
</ul>

<h3>Key Differences:</h3>

<h4>1. Controller vs ViewModel</h4>
<ul>
<li>Controller: Direct user input handling</li>
<li>ViewModel: Data binding and state management</li>
</ul>

<h4>2. Data Flow:</h4>
<ul>
<li>MVC: Bidirectional between components</li>
<li>MVVM: More reactive, uses data binding</li>
</ul>

<h4>3. Testing:</h4>
<ul>
<li>MVC: Controller logic easily testable</li>
<li>MVVM: ViewModel provides better isolation</li>
</ul>'
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
  body: '<p>Amazon S3 (Simple Storage Service) is a scalable object storage service. Here\'s how to effectively use it in Rails:</p>

<h3>1. Configuration with Active Storage:</h3>
<pre><code class="language-ruby"># config/storage.yml
amazon:
  service: S3
  access_key_id: <%= Rails.application.credentials.dig(:aws, :access_key_id) %>
  secret_access_key: <%= Rails.application.credentials.dig(:aws, :secret_access_key) %>
  region: us-east-1
  bucket: your-bucket-name</code></pre>

<h3>2. Key Concepts:</h3>
<ul>
<li><strong>Buckets:</strong> Root containers</li>
<li><strong>Objects:</strong> Files and metadata</li>
<li><strong>Keys:</strong> Unique identifiers</li>
<li><strong>URLs:</strong> Access points</li>
</ul>

<h3>3. Best Practices:</h3>
<ul>
<li>Use appropriate bucket policies</li>
<li>Implement proper CORS settings</li>
<li>Enable versioning for critical data</li>
<li>Use CDN for better performance</li>
</ul>'
)
WikiPost.create!(
  title: 'Caching Strategies for Your Rails App',
  author: 'Martin Scorsese',
  description: 'Caching Strategies for Your Rails App is a framework for building microservices in Rails.',
  body: '<p>Effective caching is crucial for Rails application performance. Here are key caching strategies:</p>

<h3>1. Page Caching:</h3>
<pre><code class="language-ruby">class HomeController < ApplicationController
  caches_page :index
end</code></pre>

<h3>2. Fragment Caching:</h3>
<pre><code class="language-erb"><% cache product do %>
  <%= render product %>
<% end %></code></pre>

<h3>3. Russian Doll Caching:</h3>
<pre><code class="language-erb"><% cache ["v1", @post] do %>
  <%= render @post.comments %>
<% end %></code></pre>

<h3>4. Low-Level Caching:</h3>
<pre><code class="language-ruby">Rails.cache.fetch("user-#{id}", expires_in: 12.hours) do
  User.expensive_query(id)
end</code></pre>

<h3>Best Practices:</h3>
<ul>
<li>Use appropriate cache keys</li>
<li>Set proper expiration times</li>
<li>Monitor cache hit rates</li>
<li>Consider cache warming strategies</li>
</ul>'
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
  body: '<p>Vector databases are specialized systems designed to store and query high-dimensional vectors efficiently.</p>

<h3>Key Components:</h3>

<h4>1. Vector Embeddings:</h4>
<ul>
<li>Numerical representations of data</li>
<li>Generated by ML models</li>
<li>High-dimensional spaces</li>
</ul>

<h4>2. Similarity Search:</h4>
<ul>
<li>Cosine similarity</li>
<li>Euclidean distance</li>
<li>Approximate Nearest Neighbors (ANN)</li>
</ul>

<h4>3. Popular Solutions:</h4>
<ul>
<li>Pinecone</li>
<li>Weaviate</li>
<li>Milvus</li>
<li>FAISS</li>
</ul>

<h4>4. Use Cases:</h4>
<ul>
<li>Semantic search</li>
<li>Recommendation systems</li>
<li>Image similarity</li>
<li>Document retrieval</li>
</ul>

<h3>Implementation Considerations:</h3>
<ul>
<li>Indexing strategies</li>
<li>Dimensionality reduction</li>
<li>Clustering approaches</li>
<li>Query optimization</li>
</ul>'
)
