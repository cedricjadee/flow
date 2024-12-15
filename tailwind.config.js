/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./dist/*.{html,js}"],
  theme: {
    extend: {
      darkMode: 'class',
      theme: {
        extend: {
          colors: {
            primary: {
              50: '#f0f9ff',
              100: '#e0f2fe',
              200: '#bae6fd',
              300: '#7dd3fc',
              400: '#38bdf8',
              500: '#0ea5e9',
              600: '#0284c7',
              700: '#0369a1',
              800: '#075985',
              900: '#0c4a6e'
            }
          },
          spacing: {
            '72': '18rem',
            '84': '21rem',
            '96': '24rem'
          },
          maxWidth: {
            '8xl': '88rem'
          },
          animation: {
            'fade-in': 'fadeIn 0.5s ease-in-out',
            'slide-in': 'slideIn 0.5s ease-out',
            'scale-in': 'scaleIn 0.3s ease-out'
          } 
        }
      }
    },
  },
  plugins: [],
}