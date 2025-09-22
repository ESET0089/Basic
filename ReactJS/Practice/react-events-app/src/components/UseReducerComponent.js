import React, { useReducer } from 'react'

const reducer = (state, action) => {
    switch(action.type){
        case 'inc':
            return {...state,
                count: state.count+1}
        case 'dec':
            return {...state,
                count: state.count-1}
    }
}

export default function UseReducerComponent() {

    const [state, dispatch] = useReducer(reducer, {count:0})
  return (
    <div>
        <div>{state.count}</div>
        <button onClick={()=>{dispatch({type:'dec'})}}>Decrement</button>
        <button onClick={()=>{dispatch({type:'inc'})}}>Increment</button>
    </div>
  )
}
