import React from "react"
import {ApolloClient, ApolloProvider, HttpLink, InMemoryCache} from "@apollo/client"
import fetch from 'isomorphic-fetch'
const httpLink = new HttpLink({
    uri: "https://api-eu-central-1.graphcms.com/v2/cku57usgd15xs01yzb9vkasor/master",
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