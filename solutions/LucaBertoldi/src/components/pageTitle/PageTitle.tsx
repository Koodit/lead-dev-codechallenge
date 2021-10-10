import React from 'react'
import {Link} from "gatsby"

export default function PageTitle(props) {
    return (
        <>
        <div className="page-path">
            <Link className="page-path__link" to="https://www.koodit.it">Home</Link>  •    
            <Link className="page-path__link" to="https://www.koodit.it/carriera">Lavora con noi</Link>  •     
            <span className="page-path__link">{props.title}</span>
        </div>
        <div className="page-title__container">
            <h1 className="page-title">Application</h1>
            <h2 className="application-title">{props.title}</h2>
        </div>
        </>
    )
}
