import React, {useCallback, useState} from 'react'
import {FileRejection, useDropzone} from 'react-dropzone'
import {gql, useMutation} from "@apollo/client"
import emailjs from "emailjs-com"
import axios from 'axios';
import 'react-dropzone-uploader/dist/styles.css'

const JobApplications = gql `
  mutation createJob($name: String!, $surname: String!, $email: String!, $phone: String!, $curriculum: String!) {
    createJobApplication(data: {name: $name, surname: $surname, email: $email, phone: $phone, curriculum: $curriculum}) {
      id
    }
  }
`;

export default function Form(props) {
    console.log(props);
    const [files, setFiles] = useState([]);
    const [inputs, setInputs] = useState({user_name:"", user_surname:"", user_email:"", user_phone:"",user_note:""});
    const [preview, setPreview] = useState([{display:false, list: ""}]);
    const [progress, setProgress] = useState(0);


     const onDrop = useCallback((acceptedFiles: File[],rejFiles: FileRejection[]) => {
         
        const mapFile = acceptedFiles.map(file => ({file, errors:[]}))
        const previewFile = acceptedFiles.map(file => setPreview(curr => [...curr, {display:true, list: file.name}]));
        setFiles(curr => [...curr, ...mapFile, ...rejFiles])
        
      }, [])
  

      
   const {getRootProps, getInputProps, isDragActive} = useDropzone({onDrop, accept: "application/pdf", maxFiles:10, maxSize:1542880})
   const [mutateFunction] = useMutation(JobApplications);



  

    const handleChange = (e) =>{
        const name = e.target.name;
        const value = e.target.value;
        setInputs(values => ({...values, [name]: value}))
    }

    const handleDelete = (e, list) => {
        setPreview(curr => curr.filter(e=> e.list === list ? "" : e))
    }
  
   const uploadImage = async (e) => {
    const config = {
        onUploadProgress: function(progressEvent) {
          var percentCompleted = Math.round((progressEvent.loaded * 100) / progressEvent.total)
          setProgress(percentCompleted);
        }
    }


    const fileAdded = {};
      const form = new FormData();
      for(let i = 0; i<files.length; i++) {
        form.set(`fileUpload`, files[i].file)

        try {
        setPreview([{display:true, list: files[i].file.name}])
        const response = await axios.post(`${process.env.GATSBY_GCMS_ENDPOINT}/upload`, form,config)
        
        /*const blob = await response.blob();
        const blobtoText = await blob.text();
        const textJson = await JSON.parse(blobtoText);
        console.log(textJson)
       
        fileAdded[`curriculum${i}`]= response.data.url;
    */
        } catch(err) {
            console.log(err);
        } 
    }
    setFiles([])
    setPreview([{display:false, list: ""}])
    const emailTemplate = {
        user_name: inputs.user_name,
        user_surname: inputs.user_surname,
        user_email: inputs.user_email,
        user_phone: inputs.user_phone,
        user_note: inputs.user_note,
        user_url: JSON.stringify(fileAdded)
    }
   
    //await mutateFunction({ variables: {  name: inputs.user_name, surname: inputs.user_surname, email: inputs.user_email, phone: inputs.user_phone, curriculum: JSON.stringify(fileAdded)}})
    //sendEmail(emailTemplate)
    }

    const sendEmail = async (e) => {
        const emailSend = await emailjs.send(process.env.GATSBY_SERVICE_ID, process.env.GATSBY_TEMPLATE_ID, e, process.env.GATSBY_MAILJS_ID);
        console.log(emailSend)
    }
    console.log(preview)
    return (
        <div className="form-application__container">
            <div className="form-cv-column">
            <form className="form-application"
                onSubmit={e => {
                    e.preventDefault();
                    uploadImage(e)
                }}>
  
                    <input type="text" name="user_name" className="form-application__input" onChange={handleChange} value={inputs.user_name} placeholder={props.formInput[8].name} />
     
                    <input type="text" name="user_surname" className="form-application__input" onChange={handleChange} value={inputs.user_surname} placeholder={props.formInput[8].surname} />

                    <input type="email" name="user_email" className="form-application__input" onChange={handleChange} value={inputs.user_email} placeholder={props.formInput[8].email}/>
  
                    <input type="text" name="user_phone" className="form-application__input" onChange={handleChange} value={inputs.user_phone} placeholder={props.formInput[8].phone}/>

                    <textarea name="user_note" className="form-application__input" onChange={handleChange} value={inputs.user_note} placeholder={props.formInput[8].note}></textarea>
                    {console.log(files)}
                    <div className="dropzone-container">
                        <p>Carica il tuo curriculum (obbligatorio file pdf max 1.5MB)</p>
                        
                       <div className="dropzone" {...getRootProps()}>
                            <input {...getInputProps()} />
                    
                           
                            <p>Drag 'n' drop some files here, or click to select files</p>
                            
                            <em>{files.length} of 10</em>
                        
                        </div>
                        {

                        preview.map((e, i) => {
                          const list = e.list;
                           return (
                                e.display ?
                                <div key={i} onClick={()=>handleDelete(e, list)}>
                                    
                                    <div>X</div>
                                    <span>{e.list}</span>
                                    <div className="dropzone-file__progress-bar">
                                        {progress === 100 ?
                                        <span style={{width: `0%`}} className="dropzone-file__live-progress"></span>
                                        :
                                        <span style={{width: `${progress}%`}} className="dropzone-file__live-progress"></span>
                                        }
                                    </div>
                                </div> :
                                ""

                            )
                            
                        })}
                       
                    </div>
                <button type="submit">Add Todo</button>
            </form>

            </div>
        </div>
    )
}
