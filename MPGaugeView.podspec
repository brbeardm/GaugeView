Pod::Spec.new do |s|

  s.name         = "MPGaugeView"
  s.version      = "0.1"
  s.summary      = "A half circle gauge view."
  s.homepage     = "https://github.com/MPiccinato/GaugeView"
  s.license      = "MIT"
  s.author             = { "Mathew Piccinato" => "mpiccinato@gmail.com" }
  s.social_media_url   = "http://twitter.com/mpiccinato"

  s.platform     = :ios
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/MPiccinato/GaugeView.git", :tag => "0.1" }
  s.source_files  = "GaugeView/**/*.swift"

end
