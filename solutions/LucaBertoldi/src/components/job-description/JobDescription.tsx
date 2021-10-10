import React, {useState} from 'react'
import parse from 'html-react-parser';
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {faPlus, faTimes} from "@fortawesome/free-solid-svg-icons"

export default function JobDescription(props) {
    console.log(props);
    const [toggleClick, settoggleClick] = useState(false)
    const handleClick = (e) => {
        console.log(e.currentTarget.children[1])
        settoggleClick(!toggleClick)
    }
    
  
    return (
            <>
            <div className="Job-description__title-container" onClick={e=> handleClick(e)}>{toggleClick ? <span className="Job-description__btn-logo open">x</span> : <span className="Job-description__btn-logo close"> +</span> } 
            <span className="Job-description__title">{props.title}</span></div>
            {   toggleClick ?
                <div className="Job-description__text">{parse(props.text.html)}</div> :
                ""
            }
            
          
            </>
      
    )
}
