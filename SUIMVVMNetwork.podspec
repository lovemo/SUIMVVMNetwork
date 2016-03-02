Pod::Spec.new do |s|
    s.name                  = 'SUIMVVMNetwork'
    s.version      = '0.0.1'
    s.summary               = 'SUIMVVMNetwork is a http request frameWork easy to develop iOS'
    s.homepage              = 'https://github.com/lovemo/SUIMVVMNetwork'
    s.platform     = :ios, '7.0'
    s.license               = 'MIT'
    s.author                = { 'lovemo' => 'lovemomoyulin@qq.com' }
    s.source                = { :git => 'https://github.com/lovemo/SUIMVVMNetwork.git',:tag => '0.0.1' }
    s.requires_arc          = true
    s.public_header_files = 'SUIMVVMNetwork/MVVMNetworkPublic.h'
# s.source_files  = 'SUIMVVMNetwork/SUIMVVMNetwork.h'
    s.framework             = 'CoreFoundation','Foundation','UIKit'

    s.subspec 'SUIMVVMNetwork' do |ss|
    pod 'AFNetworking', '>= 3.0'
    pod 'SUIMVVMStore'
    ss.source_files = 'SUIMVVMNetwork/SUIMVVMNetwork/**/*'
    ss.public_header_files = 'SUIMVVMNetwork/**/*.h'
    end

end
