import './App.css';
import { useState } from 'react';

function App({name, tagline}) {

  const [counter,setCounter] = useState(0);


  const IncrementButtonHandler = () => {
    setCounter(counter+1);
  }

  const DecrementButtonHandler = () => {
    setCounter(counter-1);
  }

  return (
    <>
    <p>{counter}</p>
    <button onClick={DecrementButtonHandler}>Decrement</button>
    <button onClick={IncrementButtonHandler}>Increment</button>
    </>


  );
}



export default App;
