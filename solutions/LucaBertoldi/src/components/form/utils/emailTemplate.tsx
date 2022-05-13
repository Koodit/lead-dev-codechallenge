import emailjs from "emailjs-com"

// EMAIL TEMPLATE NEEDED TO BE SENT VIA EMAIL
const emailTemplate = (inputs, fileAdded) => {
    const template = {
        user_name: inputs.user_name,
        user_surname: inputs.user_surname,
        user_email: inputs.user_email,
        user_phone: inputs.user_phone,
        user_note: inputs.user_note,
        user_url: JSON.stringify(fileAdded)
    }
    return template;
}


const sendEmail = async (e) => {
    const emailSend = await emailjs.send(process.env.GATSBY_SERVICE_ID, process.env.GATSBY_TEMPLATE_ID, e, process.env.GATSBY_MAILJS_ID);
    console.log(emailSend)
}

export {emailTemplate, sendEmail}


