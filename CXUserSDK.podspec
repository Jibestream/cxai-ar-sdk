
Pod::Spec.new do |spec|


  spec.name         = "CXUserSDK"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of CXUserSDK."

  spec.description  = 'My personal pod'

  spec.homepage     = "http://EXAMPLE/CXUserSDK"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"



  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  spec.author             = { "Muhammad Nauman" => "naumanyousuf@folio3.com" }


  # spec.platform     = :ios
   spec.platform     = :ios, "15.0"

  spec.source       = { :path => '.' }


 # XCFrameworks
  common_vendored_frameworks = [
    'CXUserSDK.xcframework',
    'Common.xcframework',
    'DataSDK.xcframework',
    'CXARLocalizationSDK.xcframework',
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
