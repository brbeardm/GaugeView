Pod::Spec.new do |s|

  s.name         = "MPGaugeView"
  s.version      = "0.2"
  s.summary      = "A half circle gauge view."
  s.homepage     = "https://github.com/MPiccinato/GaugeView"
  s.license      = "MIT"
  s.author             = { "Mathew Piccinato" => "mpiccinato@gmail.com" }
  s.social_media_url   = "http://twitter.com/mpiccinato"

  s.platform     = :ios
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/MPiccinato/GaugeView.git", :tag => s.version }
  s.source_files  = "GaugeView/**/*.swift"

end
