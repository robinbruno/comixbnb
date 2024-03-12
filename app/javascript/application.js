// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener('DOMContentLoaded', function() {
  const addButton = document.getElementById('add-comic-button');
  const addForm = document.getElementById('add-comic-form');

  addButton.addEventListener('click', function() {
    if (addForm.style.display === 'none') {
      addForm.style.display = 'block';
    } else {
      addForm.style.display = 'none';
    }
  });
});
