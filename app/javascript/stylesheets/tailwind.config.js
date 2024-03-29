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
        'greygreen': '#9DB595',
        'lightsand': '#FEFBF6',
        'bumblebee': '#F1D460',
        'rubyred': '#DD4A48',
        'blush': '#EEC6C6',

        'bark': '#87805E',
        'tan': '#C99872',
        'muteblue': '#8FBEA7',
        'babygreen': '#9FC088',
        'cream': '#E4D1B9',
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
