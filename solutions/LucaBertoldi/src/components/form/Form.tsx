import React, {useCallback, useState} from 'react'
import IInput from './interfaces/inputInterface'
import IPreview from './interfaces/previewInterface'
import {FileRejection, useDropzone} from 'react-dropzone'
import JobApplications from './utils/gqlApplication'
import {useMutation} from "@apollo/client"
import { emailTemplate, sendEmail } from './utils/emailTemplate'
import emailjs from "emailjs-com"
import axios from 'axios';
import parse from 'html-react-parser';
import Privacy from './components/Privacy'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {faFile, faTimesCircle} from "@fortawesome/free-solid-svg-icons"
import { toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';


toast.configure()

export default function Form(props) {
    const [files, setFiles] = useState([]);
    const [inputs, setInputs] = useState<IInput>({user_name:"", user_surname:"", user_email:"", user_phone:"",user_note:""});
    const [preview, setPreview] = useState<IPreview[]>([{display:false, list: ""}]);
    const [progress, setProgress] = useState<number>(0);
    const [errorDrop, setErrorDrop] = useState<string>("")
    
     const onDrop = useCallback((acceptedFiles: File[],rejFiles: FileRejection[]) => {
        setErrorDrop("")
        const mapFile = acceptedFiles.map(file => ({file, errors:[]}))
        const errors: string[]  = rejFiles.map(err => err.errors[0].message)
        const previewFile: string[] = acceptedFiles.map(file => file.name)
        setPreview(curr => [...curr, {display:true, list: previewFile[0]}])
        setFiles(curr => [...curr, ...mapFile])
        setErrorDrop(errors[0])
      }, [])
  
    const config: Object = {
        headers: {
            'Content-Type': 'multipart/form-data'
        },
        onUploadProgress: function(progressEvent) {
        const percentCompleted = Math.round((progressEvent.loaded * 100) / progressEvent.total)
        setProgress(percentCompleted);
        }
    }

      
    const {getRootProps, getInputProps, isDragActive} = useDropzone({onDrop, accept: "application/pdf", maxFiles:10, maxSize:1542880})
    const [mutateFunction] = useMutation(JobApplications);
  

    const handleChange = (e)  =>{
        const name = e.target.name;
        const value = e.target.value;
        setInputs(values => ({...values, [name]: value}))
    }

    const handleDelete = (e, list) => {
        setPreview(curr => curr.filter(e=> e.list === list ? "" : e))
        setFiles(curr => curr.filter(e=> e.file.name === list ? "" : e))
    }

   
    const uploadImage = async (e: React.FormEvent<HTMLFormElement>): Promise<void> => {
    e.preventDefault();
      const fileAdded: Object = {};
      const form = new FormData();
        for(let i = 0; i<files.length; i++) {

            try {
                form.append(`fileUpload`, files[i].file)
                setPreview([{display:true, list: files[i].file.name}])
                const response = await axios.post(`${process.env.GATSBY_GCMS_ENDPOINT}/upload`, form,config)
                const dataString: string = JSON.stringify(response.data);
                const dataUrl: string = JSON.parse(dataString).url;
                fileAdded[`curriculum${i}`] = dataUrl;
            } catch(err) {
                console.log(err)
                return err.message
            } 
        }

            try {
                await mutateFunction({ variables: {  name: inputs.user_name, surname: inputs.user_surname, email: inputs.user_email, phone: inputs.user_phone, note: inputs.user_note, curriculum: JSON.stringify(fileAdded)}})
                await sendEmail(emailTemplate(inputs,fileAdded))
                toast('Application Sent!', {
                    position: "top-right",
                    autoClose: 2000,
                    hideProgressBar: false,
                    draggable: true,
                    progress: undefined,
                });
            } catch(err) {
                if (err) setErrorDrop("Error submitting!")
                return
            }
           
            
        setFiles([])
        setPreview([{display:false, list: ""}])
    }

  

    return (
        <div className="form-application__container">
            <div className="form-cv-column">
            <form className="form-application"
                onSubmit={e => {
                    e.preventDefault();
                    uploadImage(e)
                }}>
                    <div className="form-row__container">
                        <div className="form-row__row">
                            <input type="text" name="user_name" className="form-application__input" onChange={handleChange} value={inputs.user_name} placeholder={`${props.formInput[8].name}*`} required/>
            
                            <input type="text" name="user_surname" className="form-application__input" onChange={handleChange} value={inputs.user_surname} placeholder={`${props.formInput[8].surname}*`} required/>
                        </div>
                        <div className="form-row__row">
                            <input type="email" name="user_email" className="form-application__input" onChange={handleChange} value={inputs.user_email} placeholder={`${props.formInput[8].email}*`}required/>
        
                            <input type="text" name="user_phone" className="form-application__input" onChange={handleChange} value={inputs.user_phone} placeholder={`${props.formInput[8].phone}*` }required/>
                        </div>
                    </div>
                    <div className="form-application__account-container">
                        <div className="form-application__account-description">
                            {parse(props.formInput[8].account.html)}
                        </div>
                        <div>
                            <input type="text" className="form-application__input" placeholder="Username Github" name="user_note" value={inputs.user_note} onChange={handleChange}/>
                        </div>
                    </div>
               
                    <div className="dropzone-container">
                        <p className="dropzone-file-size"><b>Carica il tuo curriculum</b> (obbligatorio file pdf max 1.5MB)</p>
                        
                       <div className="dropzone" {...getRootProps()}>
                            <input {...getInputProps()} />
                    
                            <div className="dropzone-message-container">
                                <h3 className="dropzone-title">Drag & Drop del file qui</h3>
                                <span> o</span> 
                                <div>Cerca...</div>
                            </div>
                            
                            <em className="dropzone-file__counter">{files.length} of 10</em>
                        
                        </div>
                        {<p className="dropzone-errors">{errorDrop}</p>
                        }

                        {
                        
                        preview.map((e, i) => {
                          const list: string = e.list;
                           return (
                                e.display && e.list !== undefined?
                                <div key={i}>
                                    <div className="dropzone-delete__container" onClick={()=>handleDelete(e, list)}>
                                        <FontAwesomeIcon icon={faTimesCircle}></FontAwesomeIcon>
                                    </div>
                                    <div className="dropzone-file__container">
                                        <div>
                                            <FontAwesomeIcon icon={faFile} className="dropzone-file__icon"/>
                                        </div>
                                        <div className="dropzone-file__progress-container">
                                            <span>{e.list}</span>
                                            <div className="dropzone-file__progress-bar">
                                                {progress === 100 ?
                                                <span style={{width: `0%`}} className="dropzone-file__live-progress"></span>
                                                :
                                                <span style={{width: `${progress}%`}} className="dropzone-file__live-progress"></span>
                                                }
                                            </div>
                                        </div>
                                    </div>
                                </div> :
                                ""

                            )
                            
                        })}
                        </div>
                        <Privacy></Privacy>
                    
               
            </form>

            </div>
        </div>
    )
}
