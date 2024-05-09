import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, TouchableOpacity } from 'react-native';
import { useFonts } from 'expo-font';

const Home = ({ navigation }) => {
    let [fontsLoaded] = useFonts({
        'LondrinaSolid-Regular': require('../assets/fonts/LondrinaSolid-Regular.ttf')
      });
  return (
    <View style={estilos.container}>
      <Text style={estilos.titulo}>Vamos aprender sobre a Divisão Celular?</Text>
      <StatusBar style="auto" />

        <View style={[estilos.botoes, {flexDirection: 'row'}]}>
            <TouchableOpacity 
                style={[estilos.botao, {marginRight: 40}]}
                onPress={() => navigation.navigate('Mitose')} // Navegação para a tela Mitose
            >
                <Text style={estilos.titulo}>Mitose</Text>
            </TouchableOpacity>
            <TouchableOpacity 
                style={[estilos.botao, {marginLeft: 40}]}
                onPress={() => navigation.navigate('Meiose')} // Navegação para a tela Meiose
            >
                <Text style={estilos.titulo}>Meiose</Text>
            </TouchableOpacity>
        </View>

      <TouchableOpacity style={estilos.flashcards}>
        <Text style={[estilos.titulo, {fontSize: 120}]}>FlashCards</Text>
      </TouchableOpacity>
    </View>
  );
}

export default Home;

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
