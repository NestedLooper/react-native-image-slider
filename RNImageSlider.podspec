require "json"

package = JSON.parse(File.read(File.join(__dir__, "./package.json")))

Pod::Spec.new do |s|
  s.name         = "RNImageSlider"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.author       = { "Paul Sauve" => "paul@burngames.net" }
  s.platform     = :ios, "7.0"
  s.source        = { :git => 'https://github.com/NestedLooper/react-native-image-slider.git'}
  s.source_files = "example/ios/**/*.{h,m}"

  s.dependency "React"

end
