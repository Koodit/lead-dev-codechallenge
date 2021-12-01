import React from "react"

import styled from "styled-components"

const Breadcrumbs = ({current}) => {

    const crumbs = ['Home', '•', 'Lavora con noi', '•', current]

    return(
        <div className="container mt-5">
            {
                crumbs.map((crumb, i) => (
                    <Crumb key={i}>{crumb}</Crumb>
                ))
            }
        </div>
    )
}

const Crumb = styled.span`
    margin-right: 5px;
    &:hover{
        cursor:pointer;
        text-decoration: underline;
    }
`

export default Breadcrumbs