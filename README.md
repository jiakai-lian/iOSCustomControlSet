# iOSCustomControlSet

A utility lib for iOS custom UI controls

[![CI Status](http://img.shields.io/travis/jiakailian/iOSCustomControlSet.svg?style=flat)](https://travis-ci.org/jiakailian/iOSCustomControlSet)
[![Version](https://img.shields.io/cocoapods/v/iOSCustomControlSet.svg?style=flat)](http://cocoapods.org/pods/iOSCustomControlSet)
[![License](https://img.shields.io/cocoapods/l/iOSCustomControlSet.svg?style=flat)](http://cocoapods.org/pods/iOSCustomControlSet)
[![Platform](https://img.shields.io/cocoapods/p/iOSCustomControlSet.svg?style=flat)](http://cocoapods.org/pods/iOSCustomControlSet)

this pod includes few sub modules. People can fetch any of them as needed.

#1. AutoGrowing Control Set

A set of controls are able to increase height from min to max as defined. Currently, it only contains a text view and a collection view. 
To Use these controls, simply add them to nib, storyboard with valid min, max height and a dummy height constraint.
######Min Height Scenario
![Min Height](https://raw.githubusercontent.com/jiakai-lian/iOSCustomControlSet/master/autogrow%2Bmin.png)
######Max Height Scenario
![Max Height](https://raw.githubusercontent.com/jiakai-lian/iOSCustomControlSet/master/autogrow%2Bmax.png)

#2. UIView+Border
#3. UIView+CornerRadius
#4. UIView+Shadow
![Border+Radius+Shadow](https://raw.githubusercontent.com/jiakai-lian/iOSCustomControlSet/master/border%2Bradius%2Bshadow.png)

#5. UIViewController+AlertMessage

#6. UIViewController+MBProgressHud

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

iOSCustomControlSet is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

To fetch the whole pod
```ruby
pod 'iOSCustomControlSet', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
```

For each subspecs
```ruby
pod 'iOSCustomControlSet/AutoGrowingViews', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
pod 'iOSCustomControlSet/UIView+Border', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
pod 'iOSCustomControlSet/UIView+CornerRadius', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
pod 'iOSCustomControlSet/UIViewController+AlertMessage', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
pod 'iOSCustomControlSet/UIViewcontroller+MBProgressHUD', :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
```

For one or multi subspecs
```ruby
pod 'iOSCustomControlSet', :subspecs => ['AutoGrowingViews','UIView+Border','UIView+CornerRadius','UIViewController+AlertMessage','UIViewController+MBProgressHUD'], :git =>  'https://github.com/jiakai-lian/iOSCustomControlSet.git'
```

## Author

Jiakai Lian, jiakai.lian@gmail.com

## License

iOSCustomControlSet is available under the MIT license. See the LICENSE file for more info.
