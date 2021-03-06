Pod::Spec.new do |s|
  s.name             = "DHJobController"
  s.version          = "0.2.1"
  s.summary          = "An Objective-C wrapper to control NSOperations jobs."
  s.homepage         = "https://github.com/davidahouse/DHJobController"
  s.license          = 'MIT'
  s.author           = { "David House" => "davidahouse@gmail.com" }
  s.source           = { :git => "https://github.com/davidahouse/DHJobController.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/davidahouse'
  s.platform     = :ios, '6.1'
  s.requires_arc = true
  s.source_files = 'Classes'
end
