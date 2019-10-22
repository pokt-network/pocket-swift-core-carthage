
Pod::Spec.new do |main|

  main.name                = "PocketSwift-Core"
  main.version             = "0.0.1"
  main.summary             = "Pocket-swift-Core contains the Core functionalities needed to interact with the Pocket Network."
  main.homepage            = "https://github.com/pokt-network/pocket-swift-core-carthage"
  main.license             = { :type => 'MIT', :text => 'MIT License

Copyright (c) 2019 Pocket Network

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
' }

  main.author              = {
                              "Wilson Garcia" => "wilson@pokt.network",
                              "Luis C. de Leon" => "luis@pokt.network",
                              "Pabel Nunez" => "pabel@pokt.network"
                            }

  main.source              = { :git => "https://github.com/pokt-network/pocket-swift-core-carthage.git", :tag => main.version.to_s }
  main.source_files        = "PocketSwift/**/*.{h,m,swift}"
  main.exclude_files       = "PocketSwiftTests/**/*.{h,m,swift}", "Pods/*"
  main.swift_version       = "5"
  main.cocoapods_version   = ">= 1.4.0"
  main.platform            = :ios, "10.0"

  main.subspec 'Core' do |core|
    core.source_files      = "PocketSwift/Packages/Core/**/*.{h,m,swift}"
    core.dependency "RxSwift",    "~> 4.0"
    core.dependency "RxBlocking",    "~> 4.0"
    core.dependency "SwiftKeychainWrapper"
    core.dependency "RNCryptor"
    core.dependency "BigInt"
  end

end
