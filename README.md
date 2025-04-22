# Rails 7 Wiki Application

A modern wiki application built with Ruby on Rails 7, allowing users to create, edit, and manage wiki posts.

## System Requirements

- Ruby 3.2.2
- Rails 7.1.3
- PostgreSQL

## Setup

1. Clone the repository:
```bash
git clone [your-repo-url]
cd wiki_app
```

2. Install dependencies:
```bash
bundle install
```

3. Database setup:
```bash
rails db:create
rails db:migrate
```

4. Start the server:
```bash
rails server
```

The application will be available at http://localhost:3000

## Features

- Wiki post creation and management
- Markdown support for content
- Clean and intuitive interface
- RESTful architecture

## Development

### Running Tests
```bash
rails test
```

### Code Style
This project follows Ruby on Rails best practices and conventions.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Built with Ruby on Rails
- Uses PostgreSQL for database management
- Frontend styled with modern CSS
