import React from 'react'
import Header from "../header/Header"
import Footer from '../footer/Footer'
export default function Layout({children}) {
    return (
        <>
        <Header></Header>
        <main className="page-content margin-page">
            {children}
        </main> 
        <Footer></Footer>
        </>
    )
}