import React from 'react'
import {useState} from 'react';
import {Link} from "gatsby"

export default function Navbar() {
    const [status, setStatus] = useState(false)


    function handleClick(e) {
        setStatus(!status);
    }


    return (
        <nav className="koodit-header__navbar">
            <ul className="koodit-header__navlinks">
                <li><Link onClick={e => handleClick(e)} className="koodit-header__link" to="#">Servizi</Link>
                {status ? 
                <ul className="koodit-header__sub-menu">
                    <li>
                        Advisory
                    </li>
                    <li>
                        E-commerce Solution
                    </li>
                    <li>
                        Web Creation
                    </li>
                </ul> :
                 ""}
                </li>
                <li className="koodit-header__link"><Link to="#">Chi siamo</Link></li>
                <li className="koodit-header__link"><Link to="#">Portfolio</Link></li>
                <li className="koodit-header__link"><Link to="#">Magazine</Link></li>
                <li className="koodit-header__link"><Link to="#">Contatti</Link></li>
                <li className="koodit-header__link"><Link to="#">Lavora con noi</Link></li>
            </ul>
        </nav>
    )
}
