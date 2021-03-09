Pod::Spec.new do |s|
    s.name         = "iOSFramework"
    s.version      = "0.0.1"
    s.summary      = "A brief description of MyFramework project."
    s.description  = <<-DESC
    An extended description of MyFramework project.
    DESC
    s.homepage     = "http://your.homepage/here"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
    s.author    = { "$(git config user.name)" => "$(git config user.email)" }
    s.source    = { :git => "https://github.com/maxrun/iOSFramework", :tag => "#{s.version}" }
    s.source_files  = "iOSFramework/**/*.swift"
    s.resources = "iOSFramework/**/*.xib"
    s.platform = :ios
    s.swift_version = "4.2"
    s.ios.deployment_target  = '12.0'
end
