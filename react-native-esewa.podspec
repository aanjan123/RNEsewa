require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-esewa"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/aanjan123/react-native-esewa.git", :tag => "#{s.version}" }


  s.source_files = "ios/**/*.{h,m,mm,swift}. ios/EsewaSDK.framework/Headers/*.h"
  s.vendored_frameworks = "EsewaSDK.framework"
  s.public_header_files = "EsewaSDK.framework/Headers/*.h"

  s.dependency "React"
end
