import React, { useContext } from 'react'
import { Context } from '../App'

export default function UseContextSample() {
    const {username, count, setCount} = useContext(Context)
    // const {count} = useContext(Context)
    const buttonHandler = () => {
        setCount(prev => prev + 1)
    }

  return (
    <div>
        Context Api
    <br/>
    The Name is "{username}"!
    <br/>
    The Number is {count}.
    <br/>
    <button onClick={buttonHandler}>Increment</button>
    </div>
    
  )
}
