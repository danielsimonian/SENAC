import React, { Component } from "react";
import { View, Text, Image, ScrollView, DrawerLayoutAndroidComponent } from "react-native";
 
class App extends Component{
  render(){
    let image1 = 'https://blog.escolatoss.com/wp-content/uploads/2024/01/Design-sem-nome-13-768x260.png'
    let image2 = 'https://p2.trrsf.com/image/fget/cf/774/0/images.terra.com/2025/02/20/1559332394-antomiramosguaruja25med2.jpg'
    let image3 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPpXkMjH4e55EFSbmUjLcXHC4Z6tD7HP_VaQ&s'
    return(
      <ScrollView>
        <Cartao titulo="BT200 - Guarujá" texto="Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste blanditiis, reiciendis quibusdam consequuntur adipisci voluptatem nesciunt quae officia culpa qui hic velit asperiores soluta expedita mollitia exercitationem temporibus esse laboriosam?" img={image1} altura={120} largura={400}></Cartao>
        <Cartao titulo="Antomi Ramos no BT 200" texto="Depois de realizar a pré-temporada no CT Lucas Sousa, de Campinas (SP), o espanhol de Gran Canaria, Antomi Ramos, atleta BEAT Sports Manager, número sete do mundo, estreia na temporada no torneio BT 200 do Guaruja (SP) ao lado do italiano Diego Bollettinari, 14o colocado." img={image2} altura={120} largura={400}></Cartao>
        <Cartao titulo="Cobertura do Play BT" texto="Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste blanditiis, reiciendis quibusdam consequuntur adipisci voluptatem nesciunt quae officia culpa qui hic velit asperiores soluta expedita mollitia exercitationem temporibus esse laboriosam?" img={image3} altura={120} largura={400}></Cartao>
      </ScrollView>
    );
  }
}

export default App

//Criando os próprios componentes
class Cartao extends Component {
  render(){
    
    return(
      //quando coloca mais de uma TAG precisa colocar o <View>
      <View style={{alignItems:"center"}}>
        <Text style={{ fontSize: 30, textAlign:"center", marginTop:50, marginBottom:10}}> {this.props.titulo}</Text>
        <Image source={{uri:this.props.img}} style={{width:this.props.largura, height:this.props.altura}}></Image>
        <Text style={{ fontSize: 15, textAlign:"center", marginTop:10, marginBottom:0}}> {this.props.texto}</Text>
      </View>
    )
  }
}
