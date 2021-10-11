import React, {ChangeEventHandler, useCallback, useState} from 'react'
import IInput from './interfaces/inputInterface'
import IPreview from './interfaces/previewInterface'
import {FileRejection, useDropzone} from 'react-dropzone'
import {gql, useMutation} from "@apollo/client"
import emailjs from "emailjs-com"
import axios from 'axios';
import parse from 'html-react-parser';
import Privacy from './components/Privacy'

const JobApplications = gql `
  mutation createJob($name: String!, $surname: String!, $email: String!, $phone: String!, $note: String!, $curriculum: String!) {
    createJobApplication(data: {name: $name, surname: $surname, email: $email, phone: $phone, note: $note, curriculum: $curriculum}) {
      id
    }
  }
`;


export default function Form(props) {
    const [files, setFiles] = useState([]);
    const [inputs, setInputs] = useState<IInput>({user_name:"", user_surname:"", user_email:"", user_phone:"",user_note:""});
    const [preview, setPreview] = useState<IPreview[]>([{display:false, list: ""}]);
    const [progress, setProgress] = useState<number>(0);
    const [errorDrop, setErrorDrop] = useState<string>("")

     const onDrop = useCallback((acceptedFiles: File[],rejFiles: FileRejection[]) => {
        setErrorDrop("")
        const mapFile = acceptedFiles.map(file => ({file, errors:[]}))
        const errors = rejFiles.map(err => err.errors[0].message)
        const realPreview = acceptedFiles.map(file => file.name)
        setPreview(curr => [...curr, {display:true, list: realPreview[0]}])
        //const previewFile = acceptedFiles.map(file => setPreview(curr => [...curr, {display:true, list: file.name}]));
        setFiles(curr => [...curr, ...mapFile])
        setErrorDrop(errors[0])
        
      }, [])
  

      
   const {getRootProps, getInputProps, isDragActive} = useDropzone({onDrop, accept: "application/pdf", maxFiles:10, maxSize:1542880})
   const [mutateFunction] = useMutation(JobApplications);


   

    const sendEmail = async (e) => {
        const emailSend = await emailjs.send(process.env.GATSBY_SERVICE_ID, process.env.GATSBY_TEMPLATE_ID, e, process.env.GATSBY_MAILJS_ID);
        console.log(emailSend)
    }
  

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

    const config: Object = {
        headers: {
            'Content-Type': 'multipart/form-data'
          },
        onUploadProgress: function(progressEvent) {
          var percentCompleted = Math.round((progressEvent.loaded * 100) / progressEvent.total)
          setProgress(percentCompleted);
        }
    }

      const fileAdded: Object = {};
      const form = new FormData();
      for(let i = 0; i<files.length; i++) {
        form.append(`fileUpload`, files[i].file)

        try {
            setPreview([{display:true, list: files[i].file.name}])
            const response = await axios.post(`${process.env.GATSBY_GCMS_ENDPOINT}/upload`, form,config)
            //fileAdded[`curriculum${i}`]= response.data.url;
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

    try {
        await mutateFunction({ variables: {  name: inputs.user_name, surname: inputs.user_surname, email: inputs.user_email, phone: inputs.user_phone, note: inputs.user_note, curriculum: JSON.stringify(fileAdded)}})
    } catch(err) {
        console.log(err);
    }
    
    //sendEmail(emailTemplate)
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
                            <input type="text" name="user_name" className="form-application__input" onChange={handleChange} value={inputs.user_name} placeholder={`${props.formInput[8].name}*`} />
            
                            <input type="text" name="user_surname" className="form-application__input" onChange={handleChange} value={inputs.user_surname} placeholder={`${props.formInput[8].surname}*`} />
                        </div>
                        <div className="form-row__row">
                            <input type="email" name="user_email" className="form-application__input" onChange={handleChange} value={inputs.user_email} placeholder={`${props.formInput[8].email}*`}/>
        
                            <input type="text" name="user_phone" className="form-application__input" onChange={handleChange} value={inputs.user_phone} placeholder={`${props.formInput[8].phone}*`}/>
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
                    {//<textarea name="user_note" className="form-application__input" onChange={handleChange} value={inputs.user_note} placeholder={props.formInput[8].note}></textarea>
                    }
                    {console.log(files)}
               
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
                        {<p>{errorDrop}</p>
                        }

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
                        <Privacy></Privacy>
                       </div>
               
            </form>

            </div>
        </div>
    )
}
