
Pod::Spec.new do |spec|

  spec.name         = "FRTextFieldAnimation"
  spec.version      = "0.1.1"
  spec.summary      = "Texfield with placeholder animation"

  spec.description  = <<-DESC
A framework to show text fields with beautiful placeholder animation when are selected
                   DESC

  spec.homepage     = "https://github.com/Farshadgh/FRTextFieldAnimation"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Farshad Ghafari" => "farshad.de.lucia@gmail.com" }

  spec.swift_version = "4.0"
  spec.ios.deployment_target = "8.0"

  spec.source       = { :git => "https://github.com/Farshadgh/FRTextFieldAnimation.git", :tag => spec.version}
  spec.source_files  = "Source/FRTextFieldAnimation/**/*.swift"
  spec.framework  = "UIKit"

end
