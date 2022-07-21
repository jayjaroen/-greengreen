module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        barlow: "'Barlow Semi Condensed', sans-serif",
        oswald: "'Oswald', sans-serif",
      },

      colors: {
        'moss': '#5A8F48',
        'lightmoss': '#80B26F',
        'darkmoss': '#2D5C1D',
        'artichoke': '#C9D9B6',
        'lightsand': '#FEFBF6',
      },

    },

  },
  variants: {
    extend: {
      fontWeight: ['hover', 'focus'],

    },
  },
  plugins: [],

}
