import Foundation
import EsewaSDK

@objc(Esewa)
class Esewa: NSObject, EsewaSDKPaymentDelegate {
    var resolveCallback: RCTPromiseResolveBlock?
    var rejectCallback: RCTPromiseRejectBlock?
    var sdk: EsewaSDK?

    @objc
    func startSdk(
      _
      merchantId: String,
      merchantSecret: String,
      productName: String,
      productAmount: String,
      productId: String,
      callbackUrl: String,
      resolver resolve: @escaping RCTPromiseResolveBlock,
      rejector reject: @escaping RCTPromiseRejectBlock
      ) -> Void {
      resolveCallback = resolve
      rejectCallback = reject
      DispatchQueue.main.async {
        self.run(merchantId: merchantId, merchantSecret: merchantSecret, productName: productName, productAmount: productAmount, productId: productId, callbackUrl: callbackUrl)
      }
    }

    func run(
      merchantId: String,
      merchantSecret: String,
      productName: String,
      productAmount: String,
      productId: String,
      callbackUrl: String
      ){
        let rvc = UIApplication.shared.windows.first?.rootViewController
        sdk = EsewaSDK(inViewController: rvc!,
                       environment: .development, delegate: self)
        sdk?.initiatePayment(merchantId: merchantId, merchantSecret: merchantSecret, productName: productName, productAmount: productAmount, productId: productId, callbackUrl: callbackUrl)
    }

    func onEsewaSDKPaymentSuccess(info:[String:Any]) {
      resolveCallback!(info)
    }

    func onEsewaSDKPaymentError(errorDescription: String) {
      print(errorDescription);
      let error = NSError(domain: "Esewa Error", code: 101)
      rejectCallback!("500", errorDescription, error)
    }
}
