import React, { Component } from "react";
import { View, Text, Image, Button } from "react-native";
 
class App extends Component {
    constructor(props) {
        super(props);
        this.state = {
            titulo: "Noticias BT",
            noticia: "BT da semana",
            img: "https://riolandia.sp.gov.br/wp-content/uploads/2018/05/noticias-web.jpeg"
        };
    }
 
    trocarNoticia(titulo, noticia, img) {
        this.setState({ titulo, noticia, img });
    }
 
    render() {
        return (
            <View style={{ marginTop: 100, alignItems: "center" }}>
                <Text>{this.state.titulo}</Text>
                <Image style={{ width: 400, height: 200, marginVertical: 10 }} source={{ uri: this.state.img }} />
                <Text style={{ textAlign: "center", paddingHorizontal: 20 }}>{this.state.noticia}</Text>
 
                <Button title="Notícia 1" onPress={() => this.trocarNoticia(
                    "BT200 - Guarujá",
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste blanditiis, reiciendis quibusdam consequuntur adipisci voluptatem nesciunt quae officia culpa qui hic velit asperiores soluta expedita mollitia exercitationem temporibus esse laboriosam?",
                    "https://blog.escolatoss.com/wp-content/uploads/2024/01/Design-sem-nome-13-768x260.png"
                )} />
 
                <Button title="Notícia 2" onPress={() => this.trocarNoticia(
                    "Antomi Ramos no BT 200",
                    "Depois de realizar a pré-temporada no CT Lucas Sousa, de Campinas (SP), o espanhol de Gran Canaria, Antomi Ramos, atleta BEAT Sports Manager, número sete do mundo, estreia na temporada no torneio BT 200 do Guaruja (SP) ao lado do italiano Diego Bollettinari, 14o colocado.",
                    "https://p2.trrsf.com/image/fget/cf/774/0/images.terra.com/2025/02/20/1559332394-antomiramosguaruja25med2.jpg"
                )} />
 
                <Button title="Notícia 3" onPress={() => this.trocarNoticia(
                    'Cobertura do Play BT',
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste blanditiis, reiciendis quibusdam consequuntur adipisci voluptatem nesciunt quae officia culpa qui hic velit asperiores soluta expedita mollitia exercitationem temporibus esse laboriosam?',
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPpXkMjH4e55EFSbmUjLcXHC4Z6tD7HP_VaQ&s"
                )} />
            </View>
        );
    }
}
 
export default App;