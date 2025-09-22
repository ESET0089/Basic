import { createContext, useState } from "react";
import ButtonComponent from "./components/ButtonComponent";
import FormEventComponent from "./components/FormEventComponent";
import LoginFormComponent from "./components/LoginFormComponent";
import MouseEvent from "./components/MouseEvent";
import ParentComponent from "./components/ParentComponent";
import UseEffectComponent from "./components/UseEffectComponent";
import UseRefComponent from "./components/UseRefComponent";
import UseContextSample from "./components/UseContextSample";

const Context = createContext();

export {Context};

function App() {

  const [count, setCount] = useState(0);
  const [username, setUsername] = useState("Felix");

  return (
    <>
    {/* <MouseEvent/> */}
    {/* <FormEventComponent/>
    <ButtonComponent/> */}
    {/* <LoginFormComponent/> */}
    {/* <UseEffectComponent/> */}
    {/* <UseRefComponent/> */}
    {/* <ParentComponent/> */}

    <Context.Provider value = {{count,setCount,username,setUsername}}>
      <UseContextSample/>
    </Context.Provider>
    </>
  );
} 

export default App;
