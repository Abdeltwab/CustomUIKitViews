#
# Be sure to run `pod lib lint CustomUIKitViews.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CustomUIKitViews'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CustomUIKitViews.'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Abdeltwab/CustomUIKitViews'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Abdeltwab' => 'Abdeltwab.elhussin@gmail.com' }
  s.source           = { :git => 'https://github.com/Abdeltwab/CustomUIKitViews.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'CustomUIKitViews/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CustomUIKitViews' => ['CustomUIKitViews/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
