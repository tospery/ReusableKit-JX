Pod::Spec.new do |s|
  s.name             = 'ReusableKit-JX'
  s.version          = '3.0.0-v1'
  s.summary          = 'Generic reusables for Cocoa.'
  s.description      = <<-DESC
						Generic reusables for Cocoa by swift.
                       DESC
  s.homepage         = 'https://github.com/tospery/ReusableKit-JX'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/ReusableKit-JX.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'
  
  s.frameworks = 'UIKit', 'Foundation'
  s.default_subspec = "Core"
  
  s.subspec "Core" do |ss|
    ss.source_files = "ReusableKit-JX/Core/*.swift"
  end
  
  s.subspec "RxSwift" do |ss|
    ss.source_files = "ReusableKit-JX/RxSwift/*.swift"
    ss.dependency "ReusableKit-JX/Core"
    ss.dependency "RxSwift", "~> 6.0"
    ss.dependency "RxCocoa", "~> 6.0"
  end
  
end
