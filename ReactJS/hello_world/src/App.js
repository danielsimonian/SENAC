import './App.css';


function MeuComando({textoBotao}){
  return (
    <button>{textoBotao}</button>
  )
}

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <MeuComando textoBotao={"Avançar"} />
        <MeuComando textoBotao={"Voltar"} />
      </header>
    </div>
  );
}

export default App;
