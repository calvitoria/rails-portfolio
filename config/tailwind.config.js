const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Helvetica Neue', ...defaultTheme.fontFamily.sans],
      },
      width: {
        'default': '800px',
        'medium': '600px',
      }
    },
    container: {
      center: true,
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('daisyui')
  ],
  daisyui: {
    themes: [
      "dark",
      "cupcake",
      "bumblebee",
      "emerald",
      "corporate",
      "retro",
      "valentine",
      "halloween",
      "lofi",
      "pastel",
      "luxury",
      "dracula",
      "cmyk",
      "autumn",
      "business",
      "night",
      "coffee",
      "winter",
      "dim",
      "nord",
      "sunset",
    ],
  }
}
