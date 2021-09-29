import React from 'react'
import Navbar from "./navbar/Navbar"
import {Link} from "gatsby"

export default function Header() {
    return (
        <header className="koodit-header">
            <div className="koodit-header__container">
                <Link to="/"><img className="koodit-header__logo" src="/images/Koodit-Logo.svg" alt="" /></Link>
                <Navbar></Navbar>
            </div>
        </header>
    )
}
