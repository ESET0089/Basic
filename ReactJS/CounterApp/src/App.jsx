import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {

  let count = 0;
  const increment=() => {
    count++;
    document.getElementById('a').innerText=count;
  }

  const decrement=() => {
    count--;
    document.getElementById('a').innerText=count;
  }

  return (
    <div>
      <h2 id='a'>0</h2>
      <button onClick={ decrement}>Decrement</button>
      <button onClick={ increment}>Increment</button>

    {/* <h2 id='a'>0</h2>
    <button onClick={()=>{
        const element = document.getElementById('a');
        var curr = parseInt(element.textContent)
        element.textContent = curr + 1
      }}>Increment</button>

    <button onClick={()=>{
        const element = document.getElementById('a');
        var curr = parseInt(element.textContent)
        element.textContent = curr - 1
      }}>Decrement</button> */}
    </div>
  )
}

export default App
