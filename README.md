# react-native-esewa

## Getting started

`$ npm install react-native-esewa --save`
`Or`
`$ yarn add bcrypt-react-native`

### Mostly automatic installation

`$ react-native link react-native-esewa`

## Usage

```javascript
import Esewa from 'react-native-esewa';

// INITILIZE
Esewa.init(MERCHANT_ID,MERCHANT_SECRET_KEY,ENVIRONMENT);
// Calling helper function to make payment through esewa.
Esewa.makePayment(amount,productName,productID,callbackURL);

// JS implementation
function onPress(){
  Esewa.init(MERCHANT_ID,MERCHANT_SECRET_KEY,ENVIRONMENT);
  Esewa.makePayment(amount,productName,productID,callbackURL);
}

// TODO: iOS
```
