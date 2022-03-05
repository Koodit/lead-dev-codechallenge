import React, { useState } from 'react';
import axios from 'axios';
import Dropzone from './dropzone';

const FOCUS_INPUT_STYLE = 'focus:outline-0 focus:border-[#8ab1de]';

function Form() {
  // Getform settings
  // eslint-disable-next-line no-unused-vars
  const [serverState, setServerState] = useState({
    submitting: false,
    status: null,
  });
  const handleServerResponse = (ok, msg, form) => {
    setServerState({
      submitting: false,
      status: { ok, msg },
    });
    if (ok) {
      form.reset();
    }
  };
  const handleOnSubmit = (e) => {
    e.preventDefault();
    const form = e.target;
    setServerState({ submitting: true });
    axios({
      method: 'post',
      url: 'https://getform.io/f/{unique-endpoint-generated-on-step-1}',
      data: new FormData(form),
    })
      // eslint-disable-next-line no-unused-vars
      .then((r) => {
        handleServerResponse(true, 'Thanks!', form);
      })
      .catch((r) => {
        handleServerResponse(false, r.response.data.error, form);
      });
  };

  return (
    <div className="max-w-[600px]">
      <h3 className="text-blue-koodit2">Invia qui la tua candidatura</h3>
      <form onSubmit={handleOnSubmit} method="POST" encType="multipart/form-data" className="grid grid-cols-2 gap-2">
        <input type="text" placeholder="Nome*" name="nome" required className={`text-base px-3 py-1 border-b-2 border-blue-koodit2 ${FOCUS_INPUT_STYLE}`} />
        <input type="text" placeholder="Cognome*" name="cognome" required className={`text-base px-3 py-1 border-b-2 border-blue-koodit2 ${FOCUS_INPUT_STYLE}`} />
        <input type="text" placeholder="E-mail*" name="email" required className={`text-base px-3 py-1 border-b-2 border-blue-koodit2 ${FOCUS_INPUT_STYLE}`} />
        <input type="text" placeholder="Telefono*" name="telefono" required className={`text-base px-3 py-1 border-b-2 border-blue-koodit2 ${FOCUS_INPUT_STYLE}`} />
        <div className="col-span-2 my-10">
          Per completare il primo processo di selezione e permetterci di valutare le sue competenze, abbiamo avviato una code challenge che la invitiamo a svolgere in seguito alla sua candidatura, accedendovi da questa GitHub Repository.
          {' '}
          <b>Per permetterci di individuare la sua Pull Request, la invitiamo a indicarci il suo username GitHub qui di seguito</b>
        </div>
        <input type="text" name="github" placeholder="Username GitHub" className={`col-span-2 text-base px-3 py-1 border-b-2 border-blue-koodit2 ${FOCUS_INPUT_STYLE}`} />
        <div className="my-10 col-span-2">
          <div className="text-blue-koodit2 mb-2">
            <h6>
              <b>Carica il tuo curriculum</b>
              {' '}
              (obbligatorio file pdf max 1.5MB)
            </h6>
          </div>
          <Dropzone className="border-2 border-dashed border-blue-koodit p-4" />
        </div>
        <h6 className="col-span-2 font-bold text-blue-koodit">Per la tua privacy</h6>
        <p className="col-span-2 text-[9px] text-gray-400">Dichiaro di aver letto l`&apos;` informativa su privacy e cookie e autorizzo Koodit s.r.l. al trattamento dei miei dati personali, in conformità con il Regolamento Europeo Privacy 679/2016.</p>
        <p className="col-span-2 text-[9px] text-gray-400">*Acconsento al trattamento dei miei dati personali per le finalità di invio di materiale promozionale e marketing da parte di Koodit s.r.l</p>
        <label className="col-span-2 text-blue-koodit" htmlFor="consent">
          <input type="checkbox" className="" required />
          <span className="ml-2">Acconsento(*)</span>
        </label>
        <p className="col-span-2 text-[9px] text-gray-400">*Autorizzo il trattamento dei miei dati personali ai sensi del Dlgs 196 del 30 giugno 2003 e dell’art. 13 GDPR (Regolamento UE 2016/679) ai fini della ricerca e selezione del personale.</p>
        <label className="col-span-2 text-blue-koodit" htmlFor="autorization">
          <input type="checkbox" className="" required />
          <span className="ml-2">Autorizzo(*)</span>
        </label>
        <button type="submit" className="col-span-2 rounded mt-8 text-white py-2 bg-blue-koodit2 opacity-70 hover:opacity-100">INVIA CANDIDATURA</button>
      </form>
    </div>
  );
}

export default Form;
