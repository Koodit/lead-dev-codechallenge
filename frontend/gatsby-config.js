module.exports = {
  siteMetadata: {
    siteUrl: 'https://www.yourdomain.tld',
  },
  plugins: [
    'gatsby-plugin-postcss',
    {
      resolve: 'gatsby-source-strapi',
      options: {
        apiURL: 'http://localhost:1337',
        queryLimit: 1000, // Defaults to 100
        collectionTypes: ['sections'],
        singleTypes: [],
      },
    },
  ],
};
