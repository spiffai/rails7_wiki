// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "tinymce"

// Initialize TinyMCE
document.addEventListener('turbo:load', function() {
  if (document.querySelector('.tinymce')) {
    tinymce.init({
      selector: '.tinymce',
      plugins: 'image link lists code table paste',
      toolbar: 'undo redo | styles | bold italic | alignleft aligncenter alignright | bullist numlist outdent indent | link image',
      height: 500,
      menubar: false
    });
  }
});
