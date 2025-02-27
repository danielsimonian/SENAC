import { StatusBar } from 'expo-status-bar';
import { Component } from 'react';
import { StyleSheet, Text, View } from 'react-native';

class App extends Component {
  render() {
    return(
      
    <View style={{backgroundColor:'#2B8DA6', flex:1, flexDirection:'column', justifyContent:'space-between', alignItems:'center'}}>
      
      <View style={{height:50, width:50, backgroundColor:'#3DC7EA'}}></View>
      <View style={{height:50, width:50, backgroundColor:'#34AAC8'}}></View>
      <View style={{height:50, width:50, backgroundColor:'#195362'}}></View>

    </View>

/* FLEX
      <View style={{flex:1, gap:10, backgroundColor:'gray'}}>

        <View style={{flex:1, backgroundColor:'red', alignItems:'center', justifyContent:'center'}}>
          <Text style={{}}>Header</Text>
        </View>

        <View style={{flex:5, backgroundColor:'green', alignItems:'center', justifyContent:'center'}}>
          <Text>Body</Text>
        </View>
        
        <View style={{flex:1, backgroundColor:'yellow', alignItems:'center', justifyContent:'center'}}>
          <Text>Footer</Text>
        </View>

      </View>
*/
    );
  }
}

export default App;