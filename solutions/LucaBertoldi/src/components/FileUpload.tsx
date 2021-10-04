import React, {useCallback, useState} from 'react'
import {FileRejection, useDropzone} from 'react-dropzone'

export default function FileUpload() {
    const [files, setFiles] = useState([])
    const onDrop = useCallback((acceptedFiles: File[],rejFiles: FileRejection[]) => {
        const mapFile = acceptedFiles.map(file => ({file, errors:[]}))
        setFiles(curr => [...curr, ...mapFile, ...rejFiles])
      }, [])
      const {getRootProps, getInputProps, isDragActive} = useDropzone({onDrop})
    
      return (
        <div {...getRootProps()}>
          <input {...getInputProps()} />
          
           
              <p>Drag 'n' drop some files here, or click to select files</p>
          {console.log(files)}
        </div>
      )
}
