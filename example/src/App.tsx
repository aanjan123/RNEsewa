import * as React from 'react';
import { StyleSheet, View, Button } from 'react-native';
import Esewa from 'react-native-esewa';

export default function App() {
  const initiate = async () => {
    // Esewa.init(
    //   'JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R',
    //   'BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ==',
    //   'test'
    // );
    // await Esewa.makePayment(
    //   '100',
    //   'test',
    //   '123',
    //   'https://uat-merchant.esewa.com.np'
    // );
    try {
      await Esewa.startSdk(
        'JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R',
        'BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ==',
        '100',
        'test',
        '123',
        'https://uat-merchant.esewa.com.np'
      );
      return;
    } catch (e) {
      console.log({ e });
    }
  };

  return (
    <View style={styles.container}>
      <Button title={`Test SDK`} onPress={initiate} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
