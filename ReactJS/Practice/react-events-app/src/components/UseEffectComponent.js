import React, { useEffect, useState } from 'react'

export default function UseEffectComponent() {
    const suggestions = [
        "Laptops",
        "Bottles",
        "Car"
    ];

    const [recomendation, setRecomendation] = useState([]);
    const [search, setSearch] = useState("")

    useEffect(() => {
        setRecomendation(suggestions.filter((element)=>element.includes(search)));
    },[search]);


  return (
    <div>
        <input value={search} onChange={(e)=>setSearch(e.target.value)}/>

        {
            recomendation.map((rec, index) => (<div>{index}.{rec}</div>))
        }
    </div>
  )
}
