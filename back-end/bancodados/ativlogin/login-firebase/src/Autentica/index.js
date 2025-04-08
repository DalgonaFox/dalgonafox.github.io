import React, {useState} from 'react';
import { StyleSheet, Text, View, TextInput, TouchableOpacity} from 'react-native';
import {signInWithEmailAndPassword} from 'firebase/auth'
import {auth} from '../firebaseConfig'
import { LinearGradient } from 'expo-linear-gradient';

const Autentica=({setUser}) => {

    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');

    const handleLogin=() =>{
    signInWithEmailAndPassword(auth, email, password)
  .then((userCredential) => {
    const user = userCredential.user;
    console.log(user);
    setUser(user);
  })
  .catch((error) => {
    const errorCode = error.code;
    const errorMessage = error.message;
    console.log(errorMessage);
  }); 
    }


  return (
    <View style={estilos.container}>
        <Text style={estilos.titulo}>Autenticação de Usuário</Text>
      <TextInput style={estilos.textinput} placeholder = 'Username' value={email} onChangeText={(val) => {setEmail(val);}} />
      <TextInput style={estilos.textinput} placeholder = 'Password' value={password} secureTextEntry={true} onChangeText={(val) => {setPassword(val);}} />
      <TouchableOpacity style={estilos.botao} onPress={handleLogin}>Entrar</TouchableOpacity>
    </View>
  );
};

export default Autentica;

const estilos = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
    flexDirection: 'column',
    backgroundColor: '#723691',
  },
  background: {
    position: 'absolute',
    left: 0,
    right: 0,
    top: 0,
    height: '100%'
  },
  textinput: {
    borderColor: 'black',
    borderWidth: 2,
    borderRadius: 10,
    width: '60%',
    height: 50,
    margin: 10,
    itemOpacity: '50%',
    padding: 10,
    backgroundColor: 'white',
    color: 'rgba(0, 0, 0, 0.5)',
  },
  titulo: {
    fontSize: 50,
    marginBottom: 20,
    color: 'white',
  },
  botao: {
    height: 50,
    width: 90,
    fontSize: 20,
    color: 'white',
    backgroundColor: '#66097D',
    borderRadius: 10,
    alignItems: 'center',
    justifyContent: 'center',
    marginTop: 20,
  },
});
