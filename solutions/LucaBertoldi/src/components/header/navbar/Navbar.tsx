import React, {useState}  from 'react'   
import {Link} from "gatsby"

export default function Navbar() {
    const [status, setStatus] = useState(false)
    const [nav, setNav] = useState(false)
    

    function handleClick(e) {
        setStatus(!status);
    }

    const handleNav = () => {
        setNav(!nav);
    }
    

    


    return (
        
        <nav className="koodit-header__navbar">
            <div className={nav ? "koodit-header__hamburger change": "koodit-header__hamburger" } onClick={handleNav}>
                <div className="bar1"></div>
                <div className="bar2"></div>
                <div className="bar3"></div>
            </div>
            <ul className={nav ? "koodit-header__navlinks mobile-nav" : "koodit-header__navlinks"}>
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
