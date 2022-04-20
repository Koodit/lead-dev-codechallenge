import { graphql } from 'gatsby'

export const Specs = graphql`
    fragment Specs on StrapiJobsSpecifiche {
        Benefits_aziendali
        Chi_Siamo
        Chi_cerchiamo
        Formazione_interna
        Job_Description
        RAL
        Requirements
        Sede_di_lavoro
    }
`