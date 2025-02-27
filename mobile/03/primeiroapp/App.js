import React, { Component } from "react";
import { View, Text, Image, Button, StyleSheet } from "react-native";
 
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
            <View style={style.container}>
                <View style={style.titleContainer}>
                    <Text style={style.title}>{this.state.titulo}</Text>
                </View>
                <Image style={style.newsImage} source={{ uri: this.state.img }} />
                <View style={style.newsTextContainer}>
                    <Text style={style.newsText}>{this.state.noticia}</Text>
                </View>
                <View style={style.buttons}>
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
            </View>
        );
    }
}

const style = StyleSheet.create({
    container:{
        flex:1,
    },

    titleContainer:{
        flex:1,
        justifyContent:'flex-end',
        alignItems:'center',
        marginBottom: 10,
    },

    title:{
        fontSize: 20
    },

    newsImage:{
        flex:3 
    },

    newsTextContainer:{
        flex:1,
        justifyContent:'flex-start',
        alignItems:'center',
        marginTop: 10,
        marginHorizontal: 10
    },

    newsText:{
        textAlign: 'justify'
    },

    buttons:{
        flex:1, 
        alignItems:'center', 
        justifyContent:'center', 
        gap:20, 
        flexDirection:"row"
    }
})
 
export default App;