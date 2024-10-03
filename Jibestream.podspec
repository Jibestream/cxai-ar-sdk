#
#  Be sure to run `pod spec lint CXUserSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "Jibestream"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of Jibestream."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = 'Jibestream frameworks integration'

  spec.homepage     = "http://EXAMPLE/CXUserSDK"

  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "Muhammad Nauman" => "naumanyousuf@folio3.com" }
  # Or just: spec.author    = "Muhammad Nauman"
  # spec.authors            = { "Muhammad Nauman" => "naumanyousuf@folio3.com" }
  # spec.social_media_url   = "https://twitter.com/Muhammad Nauman"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
   spec.platform     = :ios, "15.0"

  spec.source       = { :path => '.' }


 # XCFrameworks
  spec.vendored_frameworks = [
    'Jibestream/JMapControllerKit.xcframework',
    'Jibestream/JMapCoreKit.xcframework',
    'Jibestream/JMapNavigationKit.xcframework',
    'Jibestream/JMapRenderingKit.xcframework'
  ]


end
