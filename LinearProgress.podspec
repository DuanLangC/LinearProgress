Pod::Spec.new do |s|
  s.name         = "LinearProgress"
  s.version      = "0.0.1"
  s.summary      = "Simple progress bar for iOS"
  s.homepage     = "https://github.com/DuanLangC/LinearProgress"
  s.license      = "MIT"
  s.author             = { "Eldis" => "duanlangc@gmail.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/DuanLangC/LinearProgress.git", :tag => s.version }
  s.source_files  = "Source/*.swift"
  s.requires_arc = true
  s.swift_version = "4.2"
end
