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
 
    let nome = 'Olá Mundo!'
    let image = 'https://cdn-icons-png.flaticon.com/512/1033/1033947.png'
   
    return(
      <View style={{alignItems:"center"}}>
        <Text style={{ fontSize: 30, textAlign:"center", marginTop:50, marginBottom:20}}> {nome} </Text>
        <Image source={{uri:image}} style={{width:300, height:300}}></Image>
      </View>
    );
  }
}
export default App