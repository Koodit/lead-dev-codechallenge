/**
 * Configure your Gatsby site with this file.
 *
 * See: https://www.gatsbyjs.com/docs/gatsby-config/
 */

 require('dotenv').config()

module.exports = {
  /* Your site config here */
 plugins: [
    {
      resolve: "gatsby-source-graphql",
      options: {
        typeName: "GraphCMS",
        fieldName: "gcms",
        url: process.env.GATSBY_GCMS_ENDPOINT
      }
    }
  ],
}
