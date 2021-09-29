import React from 'react'
import Header from "../header/Header"

export default function Layout({children}) {
    return (
        <>
        <Header></Header>
        <main className="page-content">
            {children}
        </main> 
        </>
    )
}
