# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# TinyMCE
pin "tinymce", to: "tinymce/tinymce.min.js"
pin_all_from "tinymce", under: "tinymce", to: "tinymce"
