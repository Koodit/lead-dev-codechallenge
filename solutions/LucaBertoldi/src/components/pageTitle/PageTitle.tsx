import React from 'react'

export default function PageTitle(props) {
    return (
        <div className="page-title__container">
            <h1>Application</h1>
            <h2>{props.title}</h2>
        </div>
    )
}
