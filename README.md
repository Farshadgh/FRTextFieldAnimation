# FRTextFieldAnimation

<center>

[![Swift Version][swift-image]][swift-url]
[![CocoaPods version](https://img.shields.io/cocoapods/v/iOSViews.svg?style=flat)]
[cocoapods]
[![License][license-image]][license-url]

</center>

This library shows text fields with beautiful placeholder animation when are selected

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- **Swift 4.0 or higher**
- iOS 8.0
- XCode 9.0

## Installation

### Cocoapods

Install Cocoapods if need be.

```bash
$ gem install cocoapods
```

Add `FRTextFieldAnimation` in your `Podfile`.

```ruby
use_frameworks!

pod 'FRTextFieldAnimation'
```

Then, run the following command.

```bash
$ pod install
```


## Usage

Find a [sample code for iOS here](Example/).

### Initialization

```    swift
import FRTextFieldAnimation
```

```    swift
@IBOutlet weak var textView: FRTextFieldAnimation!
```

```    swift
textView.placeHolderFont = UIFont.boldSystemFont(ofSize: 20)
textView.textFieldFont = UIFont.boldSystemFont(ofSize: 15)
textView.placeHolderTitle = "Phone number"
textView.placeHolderColor = UIColor.red
textView.lineColor = UIColor.purple
textView.textColor = UIColor.darkGray
textView.textLimit = 11
textView.keyboardType = .numberPad
```
if you want to use  textfield delegates methods

```    swift
textView.delegate = self
```
```    swift
extension ViewController: AnimatedTextInputDelegate {
func animatedTextInputDidEndEditing(animatedTextInput: FRTextFieldInput) {
//code
}

func animatedTextInputDidBeginEditing(animatedTextInput: FRTextFieldInput) {
//code
}

func animatedTextInputDidChange(animatedTextInput: FRTextFieldInput) {
//code
}

func animatedTextInputShouldReturn(animatedTextInput: FRTextFieldInput) -> Bool {
animatedTextInput.resignFirstResponder()
return true
}

func animatedTextInputShouldBeginEditing(animatedTextInput: FRTextFieldInput) -> Bool {
return true
}

func animatedTextInputShouldEndEditing(animatedTextInput: FRTextFieldInput) -> Bool {
return true
}
}
```

## Author

Farshad Ghafari, farshad.de.lucia@gmail.com




## License

FRTextFieldAnimation is available under the MIT license. See the LICENSE file for more info.

[cocoapods]: https://cocoapods.org/pods/FRTextFieldAnimation
[swift-image]: https://img.shields.io/badge/swift-4.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/github/license/amosavian/FileProvider.svg
[license-url]: LICENSE
[codebeat-url]: https://codebeat.co/projects/github-com-amosavian-fileprovider


