import { createContext, useState } from "react";
import ButtonComponent from "./components/ButtonComponent";
import FormEventComponent from "./components/FormEventComponent";
import LoginFormComponent from "./components/LoginFormComponent";
import MouseEvent from "./components/MouseEvent";
import ParentComponent from "./components/ParentComponent";
import UseEffectComponent from "./components/UseEffectComponent";
import UseRefComponent from "./components/UseRefComponent";
import UseContextSample from "./components/UseContextSample";
import UseReducerComponent from "./components/UseReducerComponent";
import CustomHookComponent from "./components/CustomHookComponent";

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

    {/* <Context.Provider value = {{count,setCount,username,setUsername}}>
      <UseContextSample/>
    </Context.Provider> */}
    {/* <UseReducerComponent/> */}
    <CustomHookComponent/>
    </>
  );
} 

export default App;
