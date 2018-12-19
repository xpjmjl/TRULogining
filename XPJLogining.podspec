#
# Be sure to run `pod lib lint TRUNetworking.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XPJLogining'
  s.version          = '0.0.2'
  s.summary          = 'XPJLogining.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xpjmjl/TRULogining.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xupengju' => 'xupengju@qupeiyin.com' }
  s.source           = { :git => 'https://github.com/xpjmjl/TRULogining.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'XPJLogining/**/*.{m,h,xib}'
  #s.resources = "XPJLogining/**/*.{xib}"
  
  # s.resource_bundles = {
  #   'TRUNetworking' => ['XPJLogining/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'XPJNetworking', '~> 0.0.2'
end
