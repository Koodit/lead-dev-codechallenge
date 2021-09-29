import React from 'react'
import {Link} from "gatsby"

export default function Navbar() {
    return (
        <nav className="koodit-header__navbar">
            <ul className="koodit-header__navlinks">
                <li><Link to="#">Servizi</Link></li>
                <li><Link to="#">Chi siamo</Link></li>
                <li><Link to="#">Magazine</Link></li>
                <li><Link to="#">Contatti</Link></li>
                <li><Link to="#">Lavora con noi</Link></li>
            </ul>
        </nav>
    )
}
