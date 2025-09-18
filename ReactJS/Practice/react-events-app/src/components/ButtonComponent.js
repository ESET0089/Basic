

function ButtonComponent() {

  const buttonHandler = ()=>{
      // console.log("hello world");
      alert("Login successful")
    }


  return (
    <>
    <button onClick={buttonHandler}>Login</button>
    </>
  );
}

export default ButtonComponent;
