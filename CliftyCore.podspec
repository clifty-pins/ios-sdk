Pod::Spec.new do |spec|
  spec.name = "CliftyCore"
  spec.version = "0.1"
  spec.summary = "Clifty Core library for iOS apps"
  spec.homepage = "https://clifty.io"
  spec.documentation_url = "https://github.com/clifty-io/ios-sdk/wiki"
  spec.license = { :type => "Commercial" }
  spec.source = { :git => "https://github.com/clifty-io/ios-sdk.git", :tag => "#{spec.version}" }
  spec.swift_version = "5.3"
  spec.author = { "Clifty" => "contact@clifty.io" }
  spec.platform = :ios, "15.0"

  # Supported deployment targets
  spec.ios.deployment_target = "13.0"

  # Published binaries
  vendored_frameworks = "CliftyCore.xcframework"
end
