import React, {useState} from 'react'
import parse, { domToReact } from 'html-react-parser';


export default function JobDescription(props) {
    console.log(props);
    const [toggleClick, settoggleClick] = useState(false)
    const handleClick = (e) => {
        console.log(e.currentTarget.children[1])
        settoggleClick(!toggleClick)
    }
    
    /*const options = {
        replace: ({ attribs, children }) => {
          if (!attribs) {
            return;
          }
      
          if (attribs.name === 'h3') {
            return <h3 onClick={e => handleClick(e)}>{domToReact(children, options)}</h3>;
          }
        }
      };*/

    //console.log(props.chiSiamo.html.split(/<h3>|<\/h3>/smg)[1])
    return (
            <>
            <div className="Job-description__title-container" onClick={e=> handleClick(e)}><span className="Job-description__btn-logo">{toggleClick ? "x" : "+"}</span> 
            <span className="Job-description__title">{props.title}</span></div>
            {   toggleClick ?
                <div className="Job-description__text">{parse(props.text.html)}</div> :
                ""
            }
             
            {//parse(props.data, options)}
           
            /*<div className="Job-description__title-container" onClick={e=> handleClick(e)}>
                <h3 className="Job-description__title">{props.firstField.html.split(/<h3>|<\/h3>/smg)[1]}</h3>
               
            </div>
            {toggleClick ?
                <div className="Job-description__paragraph" dangerouslySetInnerHTML={{ __html: props.firstField.html.split(/<h3>|<\/h3>/smg)[2] }}></div> :
                ""
                }
            </div>*/}
            
          
            </>
      
    )
}
