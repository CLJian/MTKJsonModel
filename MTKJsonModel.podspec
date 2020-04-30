#
# Be sure to run `pod lib lint MTKJsonModel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MTKJsonModel'
  s.version          = '0.1.0'
  s.summary          = 'JSON and model conversion, localized storage and database'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    'JSON and model conversion, localized storage and database'
                       DESC

  s.homepage         = 'https://github.com/CLJian/MTKJsonModel'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CLJian' => '343869652@qq.com' }
  s.source           = { :git => 'https://github.com/CLJian/MTKJsonModel.git', :tag => s.version.to_s }
  # s.social_media_url = ''

  s.ios.deployment_target = '7.0'

  s.source_files = 'MTKJsonModel/Classes/*'
  
  # s.resource_bundles = {
  #   'MTKJsonModel' => ['MTKJsonModel/Assets/*.png']
  # }

  s.public_header_files = 'MTKJsonModel/Classes/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
