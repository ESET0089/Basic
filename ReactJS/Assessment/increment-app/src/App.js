import { useState } from 'react'
import './App.css'


function ButtonComponent({label1, onclick}) //Reusable Button
  {
    return(
      <>
      <button onClick={onclick}>{label1}</button>
      
      </>
    )
  }

 function App() {
  const[count, setCount] = useState(0);
  
    const increment=()=> 
  {
     setCount(count+1);  
     console.log("Increment Clicked")
  }
  const decrement=()=>
  {
    setCount(count-1);  
    console.log("Decrement Clicked")
    
  }

  return (
    

      <>
        <h1>{count}</h1>
        <ButtonComponent label1="increment" onclick={increment}/>
        <ButtonComponent label1="decrement" onclick={decrement}/>
       
      </>
      
  )
}

export default App