import React, { useState } from 'react';
import { createStackNavigator } from '@react-navigation/stack';
import { NavigationContainer } from '@react-navigation/native';
import { useFonts } from 'expo-font';

import Home from './telas/Home';
import Mitose from './telas/Mitose';
import Meiose from './telas/Meiose';

const Stack = createStackNavigator();

function Navigation() {
  let [fontsLoaded] = useFonts({
    'LondrinaSolid-Regular': require('./assets/fonts/LondrinaSolid-Regular.ttf')
  });

  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName='Home'
        screenOptions={{
          headerTintColor: '#fff',
          headerStyle: { backgroundColor: '#000' },
          borderTopWidth: 0,
          headerShown: false,
        }}
      >
        <Stack.Screen name="Home" component={Home} />
        <Stack.Screen name="Mitose" component={Mitose} />
        <Stack.Screen name="Meiose" component={Meiose} />

      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default Navigation;