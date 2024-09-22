document.addEventListener('DOMContentLoaded', () => {
  const themeOptions = document.querySelectorAll('.theme-option');
  
  themeOptions.forEach(item => {
    item.addEventListener('click', function() {
      const theme = this.getAttribute('data-theme');
      document.documentElement.setAttribute('data-theme', theme);
      localStorage.setItem('theme', theme);
    });
  });


  const savedTheme = localStorage.getItem('theme') || 'sunset';
  document.documentElement.setAttribute('data-theme', savedTheme);
});