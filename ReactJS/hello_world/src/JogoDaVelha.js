import { useState } from "react";

function Quadrado({quadrado, cliqueQuadrado}){
    const [quad, setQuad] = useState();
    function handleClick(){
        setQuad('0');
    }

    return (
        <button class="quadrado" onClick={handleClick}>{quad}</button>
    )
}

function Jogo() {
    function handleClick(){
        alert('oi')
    }

    return (
        <>
            <h1>Jogo da velha</h1>
            <div class="linha">
                <Quadrado quadrado={"X"} cliqueQuadrado={handleClick} />
                <Quadrado quadrado={"X"} cliqueQuadrado={handleClick}/>
                <Quadrado quadrado={"X"} cliqueQuadrado={handleClick}/>
            </div>
            <div class="linha">
                <Quadrado quadrado={"X"} cliqueQuadrado={handleClick}/>
                <Quadrado quadrado={"X"} cliqueQuadrado={handleClick}/>
                <Quadrado quadrado={"X"} cliqueQuadrado={handleClick}/>
            </div>
            <div class="linha">
                <Quadrado quadrado={"X"} cliqueQuadrado={handleClick}/>
                <Quadrado quadrado={"X"} cliqueQuadrado={handleClick}/>
                <Quadrado quadrado={"X"} cliqueQuadrado={handleClick}/>
            </div>
        </>
    );
}

export default Jogo;