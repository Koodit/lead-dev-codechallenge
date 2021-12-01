import React, {useState, useEffect} from 'react'
import styled from 'styled-components'
import { Link } from 'gatsby'
import Hamburger from 'hamburger-react'
import Logo from '../images/Koodit-Logo_no_pay_off.svg'

const entries = ['Servizi', 'Chi Siamo', 'Portfolio', 'Magazine', 'Contatti', 'Lavora con noi']

const Menu = () => {
    const [isOpen, setOpen] = useState(false)
    const [scroll, setScroll] = useState(false);
        useEffect(() => {
            if(typeof window !== 'undefined'){
                window.addEventListener("scroll", () => {
                    setScroll(window.scrollY > 42);
                });
            }
    },[]);
    return(
        <>
        <Header className={scroll ? "sh" : "nosh"}>
            <div className="container p-4">
                <nav className="navbar justify-content-between">
                    <Link to={'/'}>
                        <img src={Logo} alt="koodit.it" />
                    </Link>
                        <div className="align-self-center">
                            <Hamburger toggled={isOpen} toggle={setOpen} />
                            <ul className="mb-0 menu">
                            {
                                entries.map((entry, i) => (
                                    <ItemSm key={i}>
                                        {entry}
                                    </ItemSm>
                                ))
                            }
                            </ul>
                        </div>
                </nav>
            </div>
        </Header>
        {
            isOpen &&
            <MobMenu>
                <div style={{marginTop:'250px'}} className="text-center">
                    {
                        entries.map((entry, i) => (
                            <ItemLg className="text-white" key={i} onClick={() => setOpen(false)}>
                                {entry.toUpperCase()}
                            </ItemLg>
                        ))
                    }
                </div>
            </MobMenu>
        }
        </>
    )
}

const Item = styled.div`
    cursor: pointer;
    &:hover{
        text-decoration: underline;
    }
`
const ItemSm = styled(Item)`
    display: inline-block;
    margin-right: 20px;
`
const ItemLg = styled(Item)`
    font-size: 32px;
    font-weight: 600;
`

const MobMenu = styled.div`
    position:fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: #336fb5;
    z-index: 2;
`

const Header = styled.header`
    background-color: white;
    position: fixed;
    top: 0;
    z-index: 3;
    width: 100%;
    img{
        width: 130px;
    }
`

export default Menu