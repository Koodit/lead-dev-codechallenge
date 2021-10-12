import React from "react"
import {ApolloClient, ApolloProvider, HttpLink, InMemoryCache} from "@apollo/client"
import fetch from 'isomorphic-fetch'
const httpLink = new HttpLink({
    uri: `${process.env.GATSBY_GCMS_ENDPOINT}`,
    fetch
})

const apolloClient = new ApolloClient({
    link: httpLink,
    cache: new InMemoryCache()
})

const wrapRootElement = ({element}) => 
<ApolloProvider client={apolloClient}>
    {element}
</ApolloProvider>

export {wrapRootElement}