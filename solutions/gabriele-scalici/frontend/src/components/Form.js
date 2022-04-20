import React from 'react';
import { useState, useCallback } from 'react';
import { useDropzone } from 'react-dropzone'
import {navigate} from 'gatsby';
import axios from 'axios';
import styled from 'styled-components';
import Spinning from './Spinning';

const Form = ({id}) => {

  const maxFiles = 10;
  const fields = {nome:'', cognome:'', email:'', telefono:'', github:'', marketing:'', privacy:''}
  
  const [data, setData] = useState(fields)
  const [files, setFiles] = useState([]);
  const [sending, setSending] = useState(false)

  const onDrop = useCallback((acceptedFiles, fileRejections) => {
    if((files.length + acceptedFiles.length) <= maxFiles){
      setFiles([...files, acceptedFiles].flat())
    }
    else{
      alert(`Puoi caricare un massimo di ${maxFiles} files...`)
    }
    fileRejections.forEach(element => {
      if(element.errors[0].code === 'file-invalid-type'){
        alert(`Il file "${element.file.name}" non è in formato valido (PDF)`)
      }
      else if(element.errors[0].code === 'file-too-large'){
        alert(`Il file "${element.file.name}" supera la dimensione massima consentita: 1.5MB`)
      }
      else{
        alert(`ERRORE: ${element.errors[0].code}`)
      }
    });
  },[files])

  const resetForm = () => {
    setData(fields)
    setFiles([])
    setSending(false)
  }

  const {getRootProps, getInputProps, isDragActive} = useDropzone({onDrop, accept: "application/pdf", multiple: true, maxSize: 1500000, maxFiles:maxFiles})

  const sendForm = async (e) => {
    e.preventDefault();
    const form = new FormData()
    for (var i = 0; i < files.length; i++){
      form.append('files', files[i])
    }
    setSending(true)
    axios.post(`http://localhost:1337/upload`,form)
    .then((response)=>{
        const pdfs = (response.data).map(x => x.id)
        axios.post(`http://localhost:1337/candidates`, {
          Nome: data.nome, 
          Cognome: data.cognome,
          Email: data.email,
          Telefono: data.telefono,
          GitHub: `https://github.com/${data.github}`,
          Marketing: data.marketing,
          Privacy: data.privacy,
          CV: pdfs,
          job: id
        })
        .then((response)=>{
          setSending(false)
          if(response.status === 200 && typeof window !== 'undefined'){
            navigate("/success/", {state: response.data})
          }
          else{
            alert(response.status)
            setSending(false)
          }
          resetForm()
        }).catch((e)=>{
          alert(e)
          resetForm()
        })
    }).catch((e)=>{
      alert(e)
      resetForm()
    })
}

  const handleChange = e => {
    e.target.type === 'checkbox' ? 
      setData(prevState => ({ ...prevState, [e.target.name]: e.target.checked })) :
      setData(prevState => ({ ...prevState, [e.target.name]: e.target.value }))
  }

  return (
    <div className='row'>
      <div className="col-lg-7 mt-5 mb-5">
        <form onSubmit={sendForm}>
          <input name="nome" type="text" placeholder="Nome*" value={data.nome} onChange={handleChange} required />
          <input name="cognome" type="text" placeholder="Cognome*" value={data.cognome} onChange={handleChange} required/>
          <input name="email" type="email" placeholder="Email*" value={data.email} onChange={handleChange} required />
          <input name="telefono" type="text" placeholder="Telefono*" value={data.telefono} onChange={handleChange} required />
        
          <div className="mt-5 mb-5">
            <p style={{color:'black'}}>
              Per completare il primo processo di selezione e permetterci di valutare le sue competenze,
              abbiamo avviato una code challenge che la invitiamo a svolgere in seguito alla sua candidatura,
              accedendovi da questa <a href="https://github.com/Koodit/lead-dev-codechallenge" target="_blank" rel="noreferrer">GitHub Repository</a>. <b>Per permetterci di individuare la sua Pull Request,
              la invitiamo a indicarci il suo username GitHub qui di seguito</b>
            </p>
          </div>
        
          <input className="mb-5" style={{width:'100%'}} name="github" type="text" placeholder="Username GitHub" value={data.github} onChange={handleChange} />

          <div className="mb-4">
            <p><b>Carica il tuo curriculum</b> (obbligatorio file pdf max 1.5MB)</p>
              <DropBox style={isDragActive ? {backgroundColor:'#336fb5', color:'white'} : null}>
                <div className="container">
                  <div style={{width:'100%',position:'relative', top:'50%', transform:'translateY(-50%)', justifyContent:'center', textAlign:'center'}}>
                    
                    <div {...getRootProps()}>
                      <input {...getInputProps()}/>
                      <div>
                          <h3>Drag &amp; Drop del file qui</h3>
                          <p style={{marginBottom:'0px'}}>o</p>
                          <label style={{cursor:'pointer',textAlign:'center'}} htmlFor="files">Cerca...</label>
                      </div>
                      <div style={{position:'absolute', bottom:'-10px', right:'0'}}>
                        <p style={{fontSize:'10px', margin:'0px 10px 5px 0px', color:'black'}}>
                          {files.length >= 1 ? files.length : '0'} of {maxFiles}
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </DropBox>          
          </div>
          
          {
            files.map((file, i)=> 
              <div style={{backgroundColor:'#33b579',borderRadius:'5px'}}> 
              <p style={{color:'white', padding:'8px'}} key={i}>
                {file && file.path}
              </p>
              </div>
            )
          }

          <p><b>Per la tua privacy</b></p>
          <small>Dichiaro di aver letto l'informativa su privacy e cookie e autorizzo Koodit s.r.l. al trattamento dei miei dati personali, in conformità con il Regolamento Europeo Privacy 679/2016.</small>
          
          <small>*Acconsento al trattamento dei miei dati personali per le finalità di invio di materiale promozionale e marketing da parte di Koodit s.r.l</small>
          <input type="checkbox" name="marketing" value={data.marketing} onChange={handleChange} aria-invalid="false" className="form-check-input" required/><span>Acconsento(*)</span>

          <small>*Autorizzo il trattamento dei miei dati personali ai sensi del Dlgs 196 del 30 giugno 2003 e dell’art. 13 GDPR (Regolamento UE 2016/679) ai fini della ricerca e selezione del personale.</small>
          <input type="checkbox" name="privacy" value={data.privacy} onChange={handleChange} aria-invalid="false" className="form-check-input" required/><span>Autorizzo(*)</span>

          {
            sending ?
            <Send style={{backgroundColor:'#5196e7'}} className="sendBtn mb-5 mt-5" disabled>
              <Spinning color={'white'} size={'20px'} />
            </Send>
            :
            <Send className="sendBtn mb-5 mt-5" type="submit">
              Invia Candidatura
            </Send>
          }
        </form>
      </div>
    </div>
  );
}

export default Form

const DropBox = styled.div`
  border:2px dashed #336fb5;
  height:140px;
  border-radius:2px;
  position:relative;
  display:flex
`
const Send = styled.button`
  width: 100%;
  background-color: #336fb5;
  color: white;
  border: none;
  padding: 10px;
  border-radius: 5px;
  text-transform: uppercase;
`