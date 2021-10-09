import React from 'react'

export default function PageTitle(props) {
    return (
        <div className="page-title__container">
            <h1 className="page-title">Application</h1>
            <h2 className="application-title">{props.title}</h2>
        </div>
    )
}
