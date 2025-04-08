import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, Image, TextInput} from 'react-native';
import { TouchableOpacity } from 'react-native-web';
import {useNavigation} from '@react-navigation/native';

export default function Login() {
  return (
    <View style={estilos.container}>
      <Image source={require('./imagem/senai.png')} style={estilos.imagem}/>
      <Text style={estilos.titulo}>Login</Text>
      <StatusBar style="auto" />

      <TextInput style={estilos.input} placeholder='seunome@aluno.senai.br' />
      <TextInput style={estilos.input} placeholder='******' />

      <TouchableOpacity style={estilos.bt}>
        <Text style={estilos.btTexto}> Acessar</Text>
      </TouchableOpacity>

      <TouchableOpacity>
        <Text style={estilos.textocadastrar} onPress ={ () => NavigationPreloadManager.navigate('Cadastro')}>Não tem uma conta?</Text>
        <Text style={estilos.textocadastrar}>Crie uma aqui!</Text>
      </TouchableOpacity>
    </View>
  );
}

const estilos = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  imagem: {
    width: 270,
    height: 70,
    alignSelf: 'center',
    marginBottom:30,
  },
  input: {
    width: 300,
    padding: 10,
    borderColor: '#ccc',
    borderWidth: 1,
    marginBottom: 10,
  },
  titulo: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 35,
  },
  bt: {
    backgroundColor: '#e30613',
    width: 150,
    height: 45,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 10,
  },
  btTexto: {
    color: '#fff',
    fontWeight: 'bold',
    fontSize: 16,
  },
    textocadastrar: {
      fontSize: 15,
      fontWeight: '600',
      color: '#222',
      textAlign: 'center',
      letterSpacing: 0.15
    },

});
