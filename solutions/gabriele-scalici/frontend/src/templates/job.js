import React, {useState} from "react"
import { graphql } from "gatsby"
import Layout from "../components/Layout"

import ReactMarkdown from 'react-markdown';
import rehypeRaw from 'rehype-raw';
import { Accordion } from 'react-bootstrap';
import {FaPlus, FaTimes} from 'react-icons/fa';

import Breadcrumbs from '../components/Breadcrumbs';
import Form from '../components/Form';

export default function Job({ data }) {
  const [open, setOpen] = useState(0)
  const job = data.allStrapiJobs.nodes[0]
  const specs = job.Specifiche[0]
  
  return (
    <Layout title={job.Ruolo}>
      <>
        <Breadcrumbs current={job.Ruolo}/>
        <div className="container mt-2 mb-5">
            <h1>Application</h1>
            <h2>{job.Ruolo}</h2>
        </div>
        <div className="container mt-5 mb-5">
            <Accordion defaultActiveKey={0} onSelect={(e) => setOpen(e)}>
                {
                    Object.keys(specs).map((title, i) => (
                        <Accordion.Item eventKey={i} key={i}>
                            <Accordion.Header>
                                {open === i ? <FaTimes/> : <FaPlus/>}
                                <span style={{marginLeft:'8px'}}>
                                    {title.replace(/_/g," ")}
                                </span>
                            </Accordion.Header>
                            <Accordion.Body>
                                <ReactMarkdown children={specs[title]} rehypePlugins={[rehypeRaw]} />
                            </Accordion.Body>
                        </Accordion.Item>
                    ))
                }
            </Accordion>
        </div>
        <div className="container">
            <Form id={job.strapiId} />
        </div>
      </>
    </Layout>
  )
}

export const query = graphql`
  query($id: Int!) {
    allStrapiJobs(filter: { strapiId: { eq: $id } }) {
      nodes {
        strapiId
        Ruolo
        Specifiche{
          ...Specs
        }
      }
    }
  }
`
