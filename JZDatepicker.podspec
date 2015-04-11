Pod::Spec.new do |s|
  s.name         = "JZDatepicker"
  s.version      = "0.1"
  s.summary      = "A simple horizontal date picker with sticky header"
  s.homepage     = "https://github.com/haojianzong/JZDatepicker"
  s.screenshots  = "https://github.com/haojianzong/JZDatepicker/raw/master/demo.gif"
  s.license      = 'MIT'
  s.author       = { "Jianzong" => "haotarzan@gmail.com" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/haojianzong/JZDatepicker", :tag => "0.1" }
  s.source_files = 'Sources/*'
  s.requires_arc = true
end
