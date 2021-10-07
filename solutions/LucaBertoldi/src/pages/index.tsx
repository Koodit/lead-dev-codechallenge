import React from "react"
import Layout from "../components/layout-page/Layout"
import JobDescription from "../components/job-description/JobDescription"
import PageTitle from "../components/pageTitle/PageTitle"
import Form from "../components/form/Form"
import {gql, useQuery} from "@apollo/client"
import "../style/index.css";

const GET_CONTENT = gql`
  query MyQuery {
  jobOffer(where: {titleOffer: "Lead Web Developer"}) {
    id
    titleOffer
    descriptionToOffer {
      ... on ApplicationForm {
        name
        surname
        email
        phone
        note
        id
      }
      ... on JobDescription {
        title
        descriptionText {
          html
        }
        id
      }
    }
  }
}`;

export default function Home() {
  const { loading, error, data } = useQuery(GET_CONTENT);

  if (loading) return 'Loading...';
  if (error) return `Error! ${error.message}`;
  const {jobOffer:{descriptionToOffer}} = data;
  console.log(data);
  console.log(descriptionToOffer);
  return (
    <>
    
    <Layout>
      {<PageTitle title={data.jobOffer.titleOffer}></PageTitle>
}     <section className="Job-description__container">
        {descriptionToOffer.map(e => {
          return (
              e.__typename === "JobDescription" ?
              <JobDescription key={e.id} title={e.title} text={e.descriptionText} ></JobDescription> :
              ""
           )
        })} 
      </section>
      <Form formInput={descriptionToOffer}></Form>
    </Layout>
    </>
  )
}
