import React, { useState } from 'react'



function FormEventComponent() {
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");

    const onChangeHandler = (event) => {
        setUsername(event.target.value);
        console.log(username);
        // prompt("This is alert")
    }

    const onChangePasswordHandler = (e) => {
        setPassword(e.target.value);
        console.log(password);
        // alert("This is alert")
    }

  return (
    <>
    <div>
        <input type='text' value={username} onChange={onChangeHandler} placeholder='Enter your username'></input>
    </div>
     <div>
        <input type='password' value={password} onChange={onChangePasswordHandler} placeholder='Enter password'></input>
    </div>
    </>
  )
}
export default FormEventComponent;