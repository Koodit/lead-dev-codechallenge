import React from 'react';

function Facebook({ width, height, color }) {
  return (
    <svg width={width} height={height} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path fillRule="evenodd" clipRule="evenodd" d="M23.0002 0H1.0005C0.44775 0 0 0.44775 0 0.99975V23.0002C0 23.5522 0.44775 24 1.0005 24H12.75V15H9.75V11.25H12.75V8.25C12.75 5.15025 14.7128 3.62475 17.478 3.62475C18.8025 3.62475 19.941 3.72375 20.2725 3.76725V7.00725L18.3547 7.008C16.851 7.008 16.5 7.72275 16.5 8.77125V11.25H20.25L19.5 15H16.5L16.56 24H23.0002C23.5522 24 24 23.5522 24 23.0002V0.99975C24 0.44775 23.5522 0 23.0002 0Z" fill={color} />
    </svg>
  );
}

export default Facebook;
