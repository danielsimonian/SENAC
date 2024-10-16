import './App.css';


function MeuComando({textoBotao}){
  return (
    <button>{textoBotao}</button>
  )
}

const products = [
    { title: 'Cabbage', id: 1 },
    { title: 'Garlic', id: 2 },
    { title: 'Apple', id: 3 },
  ];


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
