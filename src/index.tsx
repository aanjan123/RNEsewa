import { NativeModules } from 'react-native';

type EsewaType = {
  init(
    merchantId: String,
    merchantSecret: String,
    environment: String
  ): Promise<number>;
  makePayment(
    price: String,
    productName: String,
    productId: String,
    callBackUrl: String
  ): Promise<number>;
};

const { Esewa } = NativeModules;

export default Esewa as EsewaType;
