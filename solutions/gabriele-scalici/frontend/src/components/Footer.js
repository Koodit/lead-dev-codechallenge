import React from 'react'

import styled from 'styled-components'

import BiellaIcon from '../images/biella-ico_white.svg'
import MilanoIcon from '../images/Milan-ico_white.svg'
import ShopifyIcon from '../images/shopify-partner.svg'

import {FaLinkedinIn, FaFacebookSquare, FaInstagram} from 'react-icons/fa'

const sedi = [
    {
        nome: "BIELLA HQ",
        appointment: false,
        legale: "Via Corradino Sella, 10",
        citta: "13900 Biella (BI)",
        icon: BiellaIcon
    },
    {
        nome: "MILANO",
        appointment: true,
        legale: "S32 - Via Sassetti, 32",
        citta: "20124 Milano (MI)",
        icon: MilanoIcon
    }
]

const sede = {
    nome: "KOODIT SRL",
    legale: "Via Nazario Sauro,10",
    citta: "13900 Biella (BI)",
    piva: "02572680029",
    pec: "koodit@legalmail.it",
    cap: "10.000,00€ (interamente versati)"
}

const socials = [
    {
        nome: "Linkedin",
        icon: FaLinkedinIn,
        url: "https://www.linkedin.com/company/5300149",
    },
    {
        nome: "Facebook",
        icon: FaFacebookSquare,
        url: "https://www.facebook.com/koodit"
    },
    {
        nome: "Instagram",
        icon: FaInstagram,
        url: "https://www.instagram.com/kooditsrl"
    }
]


const Footer = () => {
    return (
        <FooterDiv>                
            <div className="container py-5">
                {
                    sedi.map((sede, i) => (
                        <div className="row pt-3" key={i}>
                            <div className="col-8">
                                <div className="col-md-6">
                                    <div className="row">
                                        <div className="col-4">
                                            {sede.icon && <img src={sede.icon} alt={sede.nome}/>}
                                        </div>
                                        <div className="col-8 p-0">
                                            <p className="footer-place-info">
                                                <b>{sede.nome}</b>
                                                {sede.appointment && <small style={{display:'inline'}}> (su appuntamento)</small>}
                                                <br/>
                                                {sede.legale}
                                                <br/>
                                                {sede.citta}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ))
                }
                <div className="row pt-5">
                    <div className="col-6">
                        <p style={{fontWeight:'bold'}}>{sede.nome}</p>
                        <p>Sede legale: {sede.legale}</p>
                        <p>{sede.citta}</p>
                        <p>P.IVA {sede.piva}</p>
                        <p>PEC: <a href={`mailto:${sede.pec}`}>{sede.pec}</a> Capitale sociale: {sede.cap}</p>
                    </div>
                    <div style={{textAlign:'right'}} className="col-3">
                        <img style={{maxWidth:'150px'}} src={ShopifyIcon} alt="Shopify Partners"/>
                        <div style={{marginTop:'-10px'}}>
                        {
                            socials.map((social, i) => (
                                <a href={social.url} target="_blank" rel="noreferrer" key={i}>
                                  <social.icon size={24} style={{marginRight:'5px', color: 'white'}}/>
                                </a>
                            ))
                        }
                        </div>
                    </div>
                </div>
            </div>
        </FooterDiv>
    )
}


const FooterDiv = styled.footer`
    background-color: #336fb5;
    min-height: 200px;
    p {
        font-size: 11px;
    }
    a {
        text-decoration: none;
        color: white;
        &:hover{
            color: white;
            text-decoration: underline;
        }
    }
    p, small, span {
        color: white;
        margin: 0;
    }
    img {
        height: 65px;
    }

`

export default Footer