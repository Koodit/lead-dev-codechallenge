const path = require(`path`)

exports.createPages = ({ graphql, actions }) => {
  const { createPage } = actions;

  const jobs = graphql(`
    query {
        allStrapiJobs{
          nodes {
            strapiId
            Ruolo
          }
        }
      }
  `).then(result => {
    result.data.allStrapiJobs.nodes.forEach(node => {
      createPage({
        path: `/jobs/${(node.Ruolo).toLowerCase().replace(/ /g,"-")}`,
        component: path.resolve(`./src/templates/job.js`),
        context: {
          id: node.strapiId,
        },
      });
  })
})
  return Promise.all(
    [jobs]
  )
};