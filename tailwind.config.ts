module.exports = {
  theme: {
    fontFamily: {
      main: ['Quicksand', 'sans-serif']
    },
    extend: {
      colors: {
        '1344darkblue': '#09002E',
        '1344darkpurple': '#2F1140',
        '1344blue': '#2575FC',
        '1344purple': '#7D2DAB',
      }
    }
  },
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  darkMode: "class",
  plugins: [addVariablesForColors],
}

const {
  default: flattenColorPalette,
} = require("tailwindcss/lib/util/flattenColorPalette");

/** @type {import('tailwindcss').Config} */


// This plugin adds each Tailwind color as a global CSS variable, e.g. var(--gray-200).
function addVariablesForColors({ addBase, theme }: any) {
  let allColors = flattenColorPalette(theme("colors"));
  let newVars = Object.fromEntries(
    Object.entries(allColors).map(([key, val]) => [`--${key}`, val])
  );

  addBase({
    ":root": newVars,
  });
}
