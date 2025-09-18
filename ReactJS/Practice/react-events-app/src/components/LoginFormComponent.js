import React from 'react'
import { useState } from 'react';

export default function LoginFormComponent() {

    const [loginState, setLoginState] = useState({
        username:"",
        password:""
    });

    const onUserNameChangeHandler = (e) => {
        setLoginState({
            ...loginState,
            username: e.target.value
        })
    }

    const onPasswordChangeHandler = (e) => {
        setLoginState({
            ...loginState,
            password: e.target.value
        })
    }

    const onSubmitHandler = (e) => {
        e.preventDefault();
        if(loginState.username != "username"){
            alert("invalid username")
            return;
        }
        if(loginState.password != "password"){
            alert("invalid username")
            return;
        }
        alert("Login successful")
    }



  return (
    <>
    <div>Welcome To The Login Page</div>
    <form onSubmit={onSubmitHandler}>
        <input name='username' type='text' value = {loginState.username} onChange={onUserNameChangeHandler} placeholder='Username'></input>
        <br/>
        <input name='password' type='password' value = {loginState.password} onChange={onPasswordChangeHandler} placeholder='Password'></input>
        <br/>
        <button type='submit'>Login</button>
        {/* <button type='reset'>Reset</button> */}
    </form>
    </>
  )
}
