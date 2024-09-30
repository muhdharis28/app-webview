/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import {
  StyleSheet,
  View,
} from 'react-native';
import { WebView } from 'react-native-webview';
import { APP_ENDPOINT } from '@env';

function App(): React.JSX.Element {
  return (
    <View style={styles.container}>
      <WebView source={{ uri: APP_ENDPOINT }} style={styles.webview} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,  
  },
  webview: {
    flex: 1,
  },
});

export default App;
