import React from 'react';
import Biella from '../svg/biella';
import Facebook from '../svg/facebook';
import Instagram from '../svg/instagram';
import Linkedin from '../svg/linkedin';
import Milano from '../svg/milano';
import Shopify from '../svg/shopify';

function Footer({ pageLayout }) {
  return (
    <div className="bg-blue-koodit2 py-8 px-4" id="footer-container">
      <div className={`${pageLayout} flex flex-col`}>
        <div className="flex flex-col gap-3 py-12">
          <div className="flex gap-6">
            <Biella width={85} height={85} color="white" />
            <div className="text-white text-xs ">
              <p className="font-bold">BIELLA HQ</p>
              <p>Via Corradino Sella, 10</p>
              <p>13900 Biella (BI)</p>
            </div>
          </div>
          <div className="flex gap-6">
            <Milano width={85} height={85} color="white" />
            <div className="text-white text-xs ">
              <p>
                <span className="font-bold">MILANO</span>
                {' '}
                (su appuntamento)
              </p>
              <p>S32 - Via Sassetti,32</p>
              <p>20124 Milano (MI)</p>
            </div>
          </div>
        </div>
        <div className="grid sm:grid-cols-2 text-white mb-4">
          <div>
            <h4 className="text-base font-semibold">KOODIT SRL</h4>
            <div className="text-white text-base font-light">
              <p className="">Sede legale: Via Nazario Sauro,10</p>
              <p>13900 Biella (BI)</p>
              <p>P.IVA 02572680029</p>
              <p>PEC: koodit@legalmail.it Capitale sociale: 10.000,00€ (interamente versati)</p>
            </div>
          </div>
          <div className="flex flex-col gap-4 items-end">
            <Shopify width={200} height={50} />
            <div className="flex gap-3">
              <Linkedin width={30} height={30} color="white" />
              <Facebook width={30} height={30} color="white" />
              <Instagram width={30} height={30} color="white" />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Footer;
