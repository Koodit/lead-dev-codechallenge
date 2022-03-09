import React, { useState } from 'react';
import parse from 'html-react-parser';
import PlusSvg from '../svg/plus';

function Collapsible({
  textTitle, textBody, classNameTitle, classNameBody,
}) {
  const [collapse, setCollapse] = useState('collapsed');

  const handleCollapse = () => {
    setCollapse(collapse === 'collapsed' ? 'expanded' : 'collapsed');
  };

  return (
    <div className={classNameTitle}>
      <div
        className="flex items-center gap-2 bg-blue-koodit2 border border-blue-koodit2 rounded-2xl py-3 px-5 text-xl font-bold"
        onClick={() => handleCollapse()}
        onKeyDown={() => handleCollapse()}
        role="button"
        tabIndex={0}
      >
        <div className={`icon-${collapse}`}>
          <PlusSvg fill="white" width={20} height={20} />
        </div>
        {textTitle}
      </div>
      <div className={`${classNameBody} ${collapse}`} id="card-body">
        {parse(textBody)}
      </div>
    </div>
  );
}

export default Collapsible;
