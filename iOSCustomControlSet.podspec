#
# Be sure to run `pod lib lint iOSCustomControlSet.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "iOSCustomControlSet"
  s.version          = "0.6.0"
  s.summary          = "A utility lib for iOS custom UI control"
  s.description      = <<-DESC
                       A utility lib for iOS custom UI control

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/jiakai-lian/iOSCustomControlSet"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = "MIT"
  s.author           = { "Jiakai Lian" => "jiakai.lian@gmail.com" }
  s.source           = { :git => "https://github.com/jiakai-lian/iOSCustomControlSet.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'iOSCustomControlSet' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # s.dependency 'MBProgressHUD', '~> 0.9.1'

    s.subspec 'AutoGrowingViews' do |autogrowing|
        autogrowing.version = "0.4.0"
        autogrowing.source_files = 'Pod/Classes/AutoGrowingViews/*'
    end

    s.subspec 'UIView+Border' do |border|
        border.version = "0.4.0"
        border.source_files = 'Pod/Classes/UIView+Border/*'
    end

    s.subspec 'UIView+CornerRadius' do |radius|
        radius.version = "0.4.0"
        radius.source_files = 'Pod/Classes/UIView+CornerRadius/*'
    end

    s.subspec 'UIViewController+AlertMessage' do |alert|
        alert.version = "0.4.0"
        alert.source_files = 'Pod/Classes/UIViewController+AlertMessage/*'
    end

    s.subspec 'UIViewController+MBProgressHUD' do |hud|
        hud.version = "0.4.0"
        hud.source_files = 'Pod/Classes/UIViewController+MBProgressHUD/*'
        hud.dependency 'MBProgressHUD', '~> 0.9.1'
    end
end
