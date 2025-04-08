import { createNativeStackNavigator } from '@react-navigation/stack';
import { NavigationContainer } from '@react-navigation/native';

import Login from './src/Login/index';
import Cadastro from './src/Cadastro/index';
import Home from './src/Home/index';

const Stack = createNativeStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <StackNavigator initialRouteName='Login'>
        <StackScreen name='Home' component={Home} options={{title:"Tela Inicio", headershown: false}} />
        <StackScreen name='Login' component={Login} options={{title:"Tela Inicio", headershown: false}} />
        <StackScreen name='Cadastro' component={Cadastro} options={{title:"Tela Inicio", headershown: false}} />
      </StackNavigator>
    </NavigationContainer>
  )
}