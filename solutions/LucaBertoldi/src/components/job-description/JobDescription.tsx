import React, {useState} from 'react'
import parse from 'html-react-parser';

export default function JobDescription(props) {
    const [toggleClick, settoggleClick] = useState<boolean>(false)
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
