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
                <li onClick={e => handleClick(e)} className="koodit-header__link"><Link  to="#">Servizi</Link>
                {status ? 
                <ul className="koodit-header__sub-menu">
                    <li>
                        <Link to="https://www.koodit.it/advisory/">Advisory</Link>
                    </li>
                    <li>
                        <Link to="https://www.koodit.it/e-commerce-solution/">E-commerce Solution</Link>
                    </li>
                    <li>
                        <Link to="https://www.koodit.it/web-creation/">Web Creation</Link>
                    </li>
                </ul> :
                 ""}
                </li>
                <li className="koodit-header__link"><Link to="https://www.koodit.it/chi-siamo/">Chi siamo</Link></li>
                <li className="koodit-header__link"><Link to="https://www.koodit.it/topics/portfolio/">Portfolio</Link></li>
                <li className="koodit-header__link"><Link to="https://www.koodit.it/magazine/">Magazine</Link></li>
                <li className="koodit-header__link"><Link to="https://www.koodit.it/contatti/">Contatti</Link></li>
                <li className="koodit-header__link"><Link to="https://www.koodit.it/carriera/">Lavora con noi</Link></li>
            </ul>
        </nav>
    )
}
