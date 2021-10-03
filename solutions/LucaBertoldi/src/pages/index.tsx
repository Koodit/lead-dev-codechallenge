import React from "react"
import Layout from "../components/layout-page/Layout"
import { graphql } from 'gatsby'
import {gql, useMutation} from "@apollo/client"
import "../style/index.css"

const JobApplications = gql `
  mutation createJob($name: String!, $surname: String!, $email: String!, $phone: String!) {
    createJobApplication(data: {name: $name, surname: $surname, email: $email, phone: $phone}) {
      id
    }
  }
`;



export default function Home() {
  const [mutateFunction, { data, loading, error }] = useMutation(JobApplications);
  return (
    <>
    <Layout>
      <section>
        <div>
        <form
        onSubmit={e => {
          e.preventDefault();
          mutateFunction({ variables: {  name: "ciao", surname: "belli", email: "ciao.belli@gmail.com", phone: "1234" } });
        }}
      >
        <input type="file" />
        <button type="submit">Add Todo</button>
      </form>
        </div>
      </section>
    </Layout>
    </>
  )
}


export const pageQuery = graphql`
query MyQuery {
  gcms {
    jobDescriptions {
      subtitleDescription
      titleDescription
    }
  }
}
`




