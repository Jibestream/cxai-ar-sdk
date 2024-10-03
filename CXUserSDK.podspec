
Pod::Spec.new do |spec|

  spec.name         = "CXUserSDK"
  spec.version      = "1.0.7"
  spec.summary      = "CXUserSDK incorporated with Jibestream for ARExperience"
  spec.description  = 'This is the CXUserSDK incorporated with Jibestream 2D Maps for ARExperience'
  spec.homepage     = "https://cxapp.com/"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Muhammad Nauman" => "naumanyousuf@folio3.com" }
  spec.platform     = :ios, "15.0"
  spec.source       = { :git => 'https://github.com/Jibestream/cxai-ar-sdk.git', :tag => spec.version.to_s}

 # XCFrameworks
  common_vendored_frameworks = [
    'CXUserSDK.xcframework',
    'Common.xcframework',
    'DataSDK.xcframework',
    'CXARLocalizationSDK.xcframework',
    'CXJibestreamKit.xcframework'
  ]

 # Jibestream Subspec
  spec.subspec 'Jibestream' do |jibestream|
    jibestream.vendored_frameworks = common_vendored_frameworks + [
      'CXJibestreamKit.xcframework',
      # 'Jibestream/JMapControllerKit.xcframework',
      # 'Jibestream/JMapCoreKit.xcframework',
      # 'Jibestream/JMapNavigationKit.xcframework',
      # 'Jibestream/JMapRenderingKit.xcframework'
    ]
  end

  # Meridian Subspec
  spec.subspec 'Meridian' do |meridian|
    meridian.vendored_frameworks = common_vendored_frameworks + [
      # Add meridian frameworks here
    ]
  end
  

  # Dependencies on other pods
  spec.dependency 'Firebase/Core'
  spec.dependency 'Firebase/Database'
  spec.dependency 'ARCore/CloudAnchors'
  spec.dependency 'ProgressHUD', '13.6'
  spec.dependency 'GoogleUtilities', '~> 7.13.0'

end
