import React, { useState, useEffect } from "react";
import Layout from "../components/Layout"
import styled from "styled-components";
import { navigate } from "gatsby-link";

export default function Success({location}){

    const [state, setState] = useState('')

    useEffect(() => {
        if(typeof window !== 'undefined' && location.state){
            setState(location.state)
        }
        else{
            if(typeof window !== 'undefined'){
                navigate('/')
            }
        }
    },[location.state])

    return(
        state&&
        <Layout title={'Congratulazioni!'}>
            <div className="container text-center" style={{minHeight:'60vh'}}>
                <h1>
                    Grazie, {state.Nome}
                </h1>
                <h3>
                    abbiamo ricevuto la tua candidatura e abbiamo inviato una e-mail di conferma all'indirizzo {state.Email}
                </h3>
                <Button onClick={() => navigate('/')}>
                    OK
                </Button>
            </div>
        </Layout>
    )
}

const Button = styled.button`
  min-width:200px;
  background-color: #336fb5;
  color: white;
  border: none;
  padding: 10px;
  border-radius: 5px;
  margin-top: 25px;
  text-transform: uppercase;
  &:hover{
      background-color: #5196e7;
      transition: 0.309s
  }
`