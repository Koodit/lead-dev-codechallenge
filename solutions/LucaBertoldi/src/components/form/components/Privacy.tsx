import React, {useState} from 'react'

export default function Privacy() {
    const [check, setCheck] = useState<boolean> (false);
 
    
    const handleCheck = () => {
        setCheck(!check)
    }
    return (
        <div className="section-privacy">
        <h6 className="section-privacy__title">Per la tua privacy</h6>
        <p className="section-privacy__article"> Dichiaro di aver letto l'informativa su privacy e cookie e autorizzo Koodit s.r.l. al trattamento dei miei dati personali, in conformità con il Regolamento Europeo Privacy 679/2016.</p>
        <p className="section-privacy__article">*Acconsento al trattamento dei miei dati personali per le finalità di invio di materiale promozionale e marketing da parte di Koodit s.r.l</p>
        <div>
            <input type="checkbox" id="agree" value="Acconsento"/>
            <label htmlFor="agree">Acconsento (*)</label>
        </div>
        <p className="section-privacy__article">*Autorizzo il trattamento dei miei dati personali ai sensi del Dlgs 196 del 30 giugno 2003 e dell’art. 13 GDPR (Regolamento UE 2016/679) ai fini della ricerca e selezione del personale.</p>
        <div>
            <input type="checkbox" id="agree" value="Acconsento" onClick={handleCheck}/>
            <label htmlFor="agree">Autorizzo (*)</label>
        </div>
  

            {   check ?
                <button className="send-application" type="submit">INVIA CANDIDATURA</button> :
                <button className="send-application opacity" type="submit" disabled>INVIA CANDIDATURA</button>
            }
        </div>
    )
}
