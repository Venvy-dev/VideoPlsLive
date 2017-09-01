#
# Be sure to run `pod lib lint VideoPlsLiveSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VideoPlsLive'
  s.version          = '1.7.3'
  s.summary          = 'VideoPls Live Interface View.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                      'VideoPls Live Interface View for iOS to show within backend'
                       DESC

  s.homepage         = 'https://github.com/Zard1096/VideoPlsLive.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zard1096'     => 'mr.zardqi@gmail.com',
                         'LiShaoshuai'  => 'lishaoshuai1990@gmail.com',   
                         'Bill'         => 'fuleiac@gmail.com'          }
  s.source           = { :http => 'https://cytroncdn.videojj.com/iOS_package/VideoPlsLive/VideoPlsLiveSDK_1.7.3.zip' }


  s.ios.deployment_target = '7.0'
  s.dependency 'VideoPlsUtilsPlatform', '1.7.3'
  s.frameworks = 'WebKit', 'CoreMedia', 'Accelerate'
  s.library = 'sqlite3'
  
  s.vendored_frameworks = 'VideoPlsLiveSDK.framework'

end
