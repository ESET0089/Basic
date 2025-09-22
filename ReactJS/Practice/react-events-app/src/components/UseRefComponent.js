import React, { useRef} from 'react'

export default function UseRefComponent() {

    const inputElement = useRef(null);
    const focusHandler = () => {
        inputElement.current.focus();
    }

  return (
    <>
    <div>
        Welcome to use ref
    </div>
    <input ref={inputElement}/>
    <br/>
    <button onClick={focusHandler}>focus</button>
    </>
  )
}
