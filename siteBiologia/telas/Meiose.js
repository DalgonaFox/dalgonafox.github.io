import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, TouchableOpacity } from 'react-native';
import { useFonts } from 'expo-font';

const Meiose = ({ navigation }) => {
    let [fontsLoaded] = useFonts({
        'LondrinaSolid-Regular': require('../assets/fonts/LondrinaSolid-Regular.ttf')
      });
  return (
    <View style={estilos.container}>
      <Text style={estilos.titulo}>O que é a Meiose?</Text>
      <StatusBar style="auto" />
    </View>
  );
}

export default Meiose;

const estilos = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#8EF5B1',
    alignItems: 'center',
    justifyContent: 'center',
  },
  botoes: {
    flex: 0.5,
    alignItems: 'center',
    justifyContent: 'center',
  },
  titulo: {
    color: 'white',
    fontFamily: 'LondrinaSolid-Regular',
    fontSize: 80,
    alignItems: 'center',
  },
  botao: {
    width: 361,
    height: 142,
    backgroundColor: '#3CC26A',
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 20,
  },
  flashcards: {
    width: 850,
    height: 214,
    backgroundColor: '#3CC26A',
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 20,
  }
});
