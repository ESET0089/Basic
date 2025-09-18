function MouseEvent(){
    return (
        <>
        <div
        style={{
            background:"black",
            color: "red",
            padding: "50px"
        }}
        onMouseEnter={()=>console.log('Mouse Entered div')}
        >Welcome To Div</div>
        </>
    );
}

export default MouseEvent;