import React, { Component } from "react";
import { View, Text, Image } from "react-native";
 
/*export default function App(){
  return (
    <View>
      <Text> Olá Mundo! </Text>
    </View>
  );
}*/
 
class App extends Component{
  render(){
 

    return(
      <View style={{alignItems:"center"}}>
        <Cartao nome="Daniel" altura={50} largura={50}></Cartao>
        <Cartao nome="Guigui" altura={60} largura={60}></Cartao>
        <Cartao nome="FefÊ" altura={100} largura={100}></Cartao>
      </View>
    );
  }
}
export default App

//Criando os próprios componentes
class Cartao extends Component {
  render(){
    let nome = 'Olá Mundo!'
    let image = 'https://cdn-icons-png.flaticon.com/512/1033/1033947.png'
    return(
      //quando coloca mais de uma TAG precisa colocar o <View>
      <View style={{alignItems:"center"}}>
        <Text style={{ fontSize: 30, textAlign:"center", marginTop:50, marginBottom:20}}> {this.props.nome}</Text>
        <Image source={{uri:image}} style={{width:this.props.altura, height:this.props.largura}}></Image>
      </View>
    )
  }
}