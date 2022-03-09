import React from 'react';
import { useDropzone } from 'react-dropzone';

function Dropzone({ className }) {
  const { acceptedFiles, getRootProps, getInputProps } = useDropzone();

  const files = acceptedFiles.map((file) => (
    <li key={file.path}>
      {file.path}
      {' '}
      -
      {' '}
      {file.size}
      {' '}
      bytes
    </li>
  ));

  return (
    <section className={`container ${className}`}>
      <div {...getRootProps({ className: 'dropzone' })}>
        <input {...getInputProps()} />
        <p className="text-blue-koodit2 flex flex-col text-center">
          <span className="text-2xl">Drag & Drop del file qui,</span>
          <span className="text-xs">o clicca per selezionare un file</span>
        </p>
      </div>
      <aside className="text-blue-koodit2 mt-4">
        <h4>Files:</h4>
        <ul>{files}</ul>
      </aside>
    </section>
  );
}

export default Dropzone;
