import React from "react"
import Layout from "../components/layout-page/Layout"
import JobDescription from "../components/job-description/JobDescription"
import Form from "../components/form/Form"
import { graphql } from 'gatsby'
import "../style/index.css";



export default function Home({data}) {
  const {gcms} = data;
  console.log(gcms)
  return (
    <>
    
    <Layout>
 
      <JobDescription content={data}></JobDescription>
      <Form></Form>

    </Layout>
    </>
  )
}


export async function pageQuery () {

const ok = await graphql`
query MyQuery {
  gcms {
    jobDescriptions {
      pageContent {
        raw
      }
    }
  }
}
`
console.log(ok)
}




