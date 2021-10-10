import React from 'react'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {faLinkedinIn, faFacebookSquare, faInstagram} from "@fortawesome/free-brands-svg-icons"


export default function Footer() {
    return (
        <div className="koodit-footer">
            <div className="koodit-info__container">
                <div className="koodit-headquarter__container">
                    <div className="koodit-headquarter__info">
                            <div className="koodit-headquarter__info-container">
                                <img className="koodit-headquarter__logo" src="/images/biella-ico_white.svg" alt="" />
                                <span className="koodit-headquarter__description"> <b className="koodit-headquarter__description">BIELLA HQ</b><br/> Via Corradino Sella,10 <br/>13900 Biella (BI)</span> 
                            </div>
                            <div className="koodit-headquarter__info-container">
                                <img className="koodit-headquarter__logo" src="/images/Milan-ico_white.svg" alt="" />
                                <span className="koodit-headquarter__description"> <b className="koodit-headquarter__description">MILANO</b>(su appuntamento)<br/> S32 - Via Sassetti, 32<br/>20124 Milano (MI)</span> 
                            </div>
                        
                    </div>
                </div>
            
                <div>
                    <div className="koodit-general__container">
                        <div className="koodit-general__koodit-data">
                            <h4  className="koodit-general__title">KOODIT SRL</h4>
                            <span className="koodit-general__description"> Sede legale: Via Nazario Sauro,10 <br/> 13900 Biella (BI) <br/>  P.IVA 02572680029 <br/> PEC: koodit@legalmail.it Capitale sociale: 10.000,00€ (interamente versati)</span>
                        </div>
                        <div className="koodit-general__brand-logo">
                            <div>
                                <img  src="/images/shopify-partner.svg" alt="" />
                                <div className="koodit-general__social-icon__container">
                                    <FontAwesomeIcon icon={faLinkedinIn} className="social-icon"/>
                                    <FontAwesomeIcon icon={faFacebookSquare} className="social-icon"/>
                                    <FontAwesomeIcon icon={faInstagram} className="social-icon"/>
                                </div>
                               
                            </div>
                           
                           <div>
                                
                           </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
