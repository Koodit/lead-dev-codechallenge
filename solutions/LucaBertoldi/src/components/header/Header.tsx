import React , {useEffect, useState}  from 'react'
import Navbar from "./navbar/Navbar"
import {Link} from "gatsby"




export default function Header() {
    const [scroll, setScroll] = useState<boolean>(false);

    useEffect(() => {
        window.addEventListener("scroll", () => {
          setScroll(window.scrollY > 50);
        });
    })
    return (
        <header className={scroll ? "koodit-header border-scroll" : "koodit-header"}>
           
            <div className="koodit-header__container">
                <Link to="/"><img className="koodit-header__logo" src="/images/Koodit-Logo.svg" alt="" /></Link>
                <Navbar></Navbar>
            </div>
        </header>
    )
}
