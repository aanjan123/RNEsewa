import { NativeModules } from 'react-native';

type EsewaType = {
  multiply(a: number, b: number): Promise<number>;
};

const { Esewa } = NativeModules;

export default Esewa as EsewaType;
