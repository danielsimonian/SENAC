import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, TextInput, Switch, Button } from 'react-native';
import { Picker } from '@react-native-picker/picker';
import Slider from '@react-native-community/slider';
import { Component } from 'react';

export default class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      nome: '',
      idade: '',
      sexo: 'Masculino',
      limite: 5000,
      estudante: false
    };

    this.enviarDados = this.enviarDados.bind(this);
  }

  enviarDados() {
    const { nome, idade, sexo, limite, estudante } = this.state;
    
    if (!nome || !idade || !sexo || limite <= 0) {
      alert('Preencha corretamente os campos!');
      return;
    }

    alert(
      `Conta aberta com sucesso! \n\n
      Nome: ${nome} \n
      Idade: ${idade} \n
      Sexo: ${sexo} \n
      Limite: R$ ${limite.toFixed(2)} \n
      Estudante: ${estudante ? 'Sim' : 'Não'}`
    );
  }

  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.title}>React Bank</Text>
        <View style={styles.forms}>
          <Text style={styles.labels}>Nome</Text>
          <TextInput 
            style={styles.TextInput} 
            placeholder='Digite seu nome'
            value={this.state.nome} 
            onChangeText={(text) => this.setState({ nome: text })}
          />

          <Text style={styles.labels}>Idade</Text>
          <TextInput 
            style={styles.TextInput} 
            placeholder='Digite sua idade'
            keyboardType="numeric"
            value={this.state.idade} 
            onChangeText={(text) => this.setState({ idade: text })}
          />
          
          <Text style={styles.labels}>Sexo:</Text>
          <Picker
            selectedValue={this.state.sexo}
            onValueChange={(itemValue) => this.setState({ sexo: itemValue })}
          >
            <Picker.Item label='Masculino' value='Masculino' />
            <Picker.Item label='Feminino' value='Feminino' />
            <Picker.Item label='Não Binário' value='Não Binário' />
          </Picker>

          <Text style={styles.labels}>Seu Limite:</Text>
          <Slider
            minimumValue={250}
            maximumValue={4000}
            step={10}
            value={this.state.limite}
            onValueChange={(value) => this.setState({ limite: value })}
          />
          <Text style={styles.limiteText}>R${this.state.limite.toFixed(2)}</Text>
          <View style={styles.switchContainer}>
            <Text style={styles.labels}>Estudante:</Text>
            <Switch
              style={styles.switch}
              value={this.state.estudante}
              onValueChange={(value) => this.setState({ estudante: value })}
            />
          </View>
          <Button title='Abrir Conta' onPress={this.enviarDados} />
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },

  title: {
    marginTop: 50,
    marginBottom: 20,
    fontSize: 40
  },

  labels: {
    fontSize: 18,
    fontWeight: '500'
  },

  forms: {
    flex: 1,
    width: '90%',
    gap: 10
  },

  TextInput: {
    width: '100%',
    borderColor: 'black',
    borderWidth: 1,
    borderRadius: 5,
    marginBottom: 20
  },

  switchContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 20
  }
});
