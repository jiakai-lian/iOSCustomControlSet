# iOSCustomControlSet

A utility lib for iOS custom UI control

[![CI Status](http://img.shields.io/travis/jiakailian/iOSCustomControlSet.svg?style=flat)](https://travis-ci.org/jiakailian/iOSCustomControlSet)
[![Version](https://img.shields.io/cocoapods/v/iOSCustomControlSet.svg?style=flat)](http://cocoapods.org/pods/iOSCustomControlSet)
[![License](https://img.shields.io/cocoapods/l/iOSCustomControlSet.svg?style=flat)](http://cocoapods.org/pods/iOSCustomControlSet)
[![Platform](https://img.shields.io/cocoapods/p/iOSCustomControlSet.svg?style=flat)](http://cocoapods.org/pods/iOSCustomControlSet)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

iOSCustomControlSet is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

To fetch the whole pod
```ruby
pod 'iOSCustomControlSet', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git', :tag => '0.4.0'
```

For each subspecs
```ruby
pod 'iOSCustomControlSet/UIView+Border', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
pod 'iOSCustomControlSet/UIView+CornerRadius', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
pod 'iOSCustomControlSet/UIViewController+AlertMessage', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
pod 'iOSCustomControlSet/UIViewcontroller+MBProgressHUD', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
```

For one or multi subspecs
```ruby
pod 'iOSCustomControlSet', :subspecs => ['UIView+Border','UIView+CornerRadius','UIViewController+AlertMessage','UIViewcontroller+MBProgressHUD'], :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
```

## Author

Jiakai Lian, jiakai.lian@gmail.com

## License

iOSCustomControlSet is available under the MIT license. See the LICENSE file for more info.
