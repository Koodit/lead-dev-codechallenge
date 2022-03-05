import React from 'react';
import LogoSvg from '../svg/logo';

function Navbar({ pageLayout }) {
  return (
    <div className="mt-[70px]" id="wrapper-navbar">
      <nav className="fixed z-10 bg-white top-0 right-0 left-0 py-2 px-4" id="main-nav">
        <div className={`flex justify-between ${pageLayout} mx-auto py-4`}>
          <a href="/" title="home" aria-label="Home"><LogoSvg className="fill-blue-koodit w-32" /></a>
          <div className="" id="navbarNavDropdown">
            <ul className="flex">
              <li><a className="p-2 text-blue-koodit2 whitespace-nowrap" href="/servizi" title="">Servizi</a></li>
              <li><a className="p-2 text-blue-koodit2 whitespace-nowrap" href="/chi-siamo" title="">Chi siamo</a></li>
              <li><a className="p-2 text-blue-koodit2 whitespace-nowrap" href="/portfolio" title="">Portfolio</a></li>
              <li><a className="p-2 text-blue-koodit2 whitespace-nowrap" href="/magazine" title="">Magazine</a></li>
              <li><a className="p-2 text-blue-koodit2 whitespace-nowrap" href="/contatti" title="">Contatti</a></li>
              <li><a className="p-2 text-blue-koodit2 whitespace-nowrap" href="/lavora-con-coi" title="">Lavora con noi</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  );
}

export default Navbar;
