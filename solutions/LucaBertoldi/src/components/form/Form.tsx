import React, {useCallback, useState} from 'react'
import {FileRejection, useDropzone} from 'react-dropzone'
import {gql, useMutation} from "@apollo/client"

const JobApplications = gql `
  mutation createJob($name: String!, $surname: String!, $email: String!, $phone: String!, $curriculum: String!) {
    createJobApplication(data: {name: $name, surname: $surname, email: $email, phone: $phone, curriculum: $curriculum}) {
      id
    }
  }
`;

export default function Form() {
    const [files, setFiles] = useState([])
    const onDrop = useCallback((acceptedFiles: File[],rejFiles: FileRejection[]) => {
        const mapFile = acceptedFiles.map(file => ({file, errors:[]}))
        setFiles(curr => [...curr, ...mapFile, ...rejFiles])
      }, [])
  
      
   const {getRootProps, getInputProps, isDragActive} = useDropzone({onDrop})
   const [mutateFunction] = useMutation(JobApplications);

   const uploadImage = async () => {
       console.log("ok")
      const form = new FormData();
      form.append("fileUpload", files[0].file)
      try {
      const response = await fetch("https://api-eu-central-1.graphcms.com/v2/cku57usgd15xs01yzb9vkasor/master/upload", {
        method: 'POST',
       
        body: form,
       })
       const blob = await response.blob();
       const blobtoText = await blob.text();
       const textJson = await JSON.parse(blobtoText);
       console.log(textJson)
       await mutateFunction({ variables: {  name: "ciao", surname: "belli", email: "ciao.belli@gmail.com", phone: "1234", curriculum: textJson.url}})
       //ssetFiles(textJson.url)
    } catch(err) {
        console.log(err);
    }  
    }

    return (
        <div>
            <form
                onSubmit={e => {
                    e.preventDefault();
                    uploadImage()
                }}>
                    <label>Name</label>
                    <input type="text" name="user_name" />
                    <label>Surname</label>
                    <input type="text" name="user_surname" />
                    <label>Email</label>
                    <input type="email" name="user_email" />
                    <label>Phone</label>
                    <input type="email" name="user_phone" />
                <div {...getRootProps()}>
                    <input {...getInputProps()} />
            
            
                    <p>Drag 'n' drop some files here, or click to select files</p>
                    
                
                </div>
               
                <button type="submit">Add Todo</button>
            </form>
        </div>
    )
}
