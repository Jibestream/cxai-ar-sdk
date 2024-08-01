
Pod::Spec.new do |spec|

  spec.name         = "CXUserSDK"
  spec.version      = "1.0.5"
  spec.summary      = "CXUserSDK incorporated with Jibestream for ARExperience"
  spec.description  = 'This is the CXUserSDK incorporated with Jibestream 2D Maps for ARExperience'
  spec.homepage     = "https://cxapp.com/"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Muhammad Nauman" => "naumanyousuf@folio3.com" }
  spec.platform     = :ios, "16.0"
  spec.source       = { :git => 'https://github.com/Jibestream/cxai-ar-sdk.git', :tag => spec.version.to_s}

 # XCFrameworks
  common_vendored_frameworks = [
    'CXUserSDK.xcframework',
    'Common.xcframework',
    'DataSDK.xcframework',
    'CXARLocalizationSDK.xcframework',
    'CXJibestreamKit.xcframework'
  ]

  # Dependencies on other pods
  spec.dependency 'Firebase/Core'
  spec.dependency 'Firebase/Database'
  spec.dependency 'ARCore/CloudAnchors'
  spec.dependency 'ProgressHUD', '13.6'
  spec.dependency 'GoogleUtilities', '~> 7.13.0'

end
