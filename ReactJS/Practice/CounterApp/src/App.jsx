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

  var x = 5;
  console.log(x);
  console.log(x);

  ////////////////////////////////////////////////////////////

//   const name = 'A';
// const age =25;
// const person = { name, age}
// console.log(person)
// console.log(person.name)
// console.log(person.age)

  // array map -> double list
  const items = [1,2,3,4];
  const list = items.map(num =>num*2)
  console.log(list)

  // array filters
  const even = items.filter(n => n % 2 === 0)
  console.log(even)

  // reduce -> sum
  const sum = items.reduce((acc, v) => acc + v, 0)
  console.log(sum)
  const max = items.reduce((acc, v) => acc < v?v:acc, 0)
  console.log(max)



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
