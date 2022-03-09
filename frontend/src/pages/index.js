import * as React from 'react';
import { graphql } from 'gatsby';
import Collapsible from '../components/collapsible';
import Crumb from '../components/crumb';
import Footer from '../components/footer';
import Form from '../components/form';
import Navbar from '../components/navbar';

const PAGE_LAYOUT = 'sm:max-w-[540px] md:max-w-[720px] lg:max-w-[960px] xl:max-w-[1140px] mx-auto';

function IndexPage({ data }) {
  return (
    <div id="application-page">
      <Navbar pageLayout={PAGE_LAYOUT} />
      <div className="py-[30px]" id="full-width-page-wrapper">
        <div className="py-12 w-full mx-auto px-4">
          <div className={`${PAGE_LAYOUT} pt-6 text-blue-koodit2`} id="crumb-container">
            <Crumb />
            <h1 className="pt-4 text-blue-koodit2">
              Application
            </h1>
            <h2 className="pt-4">
              Lead Web Developer
            </h2>
          </div>
          <div className={`${PAGE_LAYOUT} pt-6`} id="collapsible-container">
            {data.allStrapiSections.nodes.map((section) => (
              <Collapsible key={section.id} textTitle={section.Title} textBody={section.Body} classNameTitle="mb-1 text-bl text-white" classNameBody="text-blue-koodit2 p-5" />
            ))}
          </div>
          <div className={`${PAGE_LAYOUT} pt-6 flex`} id="form-container">
            <Form />
          </div>
        </div>
      </div>
      <Footer pageLayout={PAGE_LAYOUT} />
    </div>
  );
}

export const pageQuery = graphql`
  query SectionsContents {
    allStrapiSections {
      nodes {
        Body
        Title
        id
      }
    }
  }
`;

export default IndexPage;
