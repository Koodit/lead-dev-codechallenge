import React from "react"
import Layout from "../components/layout-page/Layout"

import Form from "../components/form/Form"
import { graphql } from 'gatsby'
import "../style/index.css";



export default function Home({data}) {
  
  return (
    <>
    
    <Layout>
 
     
      <Form></Form>
       
     
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





