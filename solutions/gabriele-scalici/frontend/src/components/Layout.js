import React from 'react'
import { Helmet } from 'react-helmet';
import "../styles/index.css"
import Menu from './Menu';
import Footer from './Footer';

const Layout = ({title, children}) => {
    return(
        <>
            <Helmet>
                <title>{title} - Koodit</title>
            </Helmet>
            <Menu/>
            <main style={{marginTop:'150px'}} className="container">
                {children}
            </main>
            <Footer/>
        </>
    )
}

export default Layout