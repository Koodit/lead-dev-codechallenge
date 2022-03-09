module.exports = {
  content: [
    './src/**/*.{js,jsx,ts,tsx}',
  ],
  theme: {
    extend: {
      colors: {
        blue: {
          koodit: '#3470B6',
          koodit2: '#336fb5',
        },
      },
      screens: {
        sm: '576px',
        // => @media (min-width: 576px) { ... }
        md: '768px',
        // => @media (min-width: 768px) { ... }
        lg: '992px',
        // => @media (min-width: 992px) { ... }
        xl: '1200px',
        // => @media (min-width: 1200px) { ... }
      },
    },
  },
  plugins: [],
};
