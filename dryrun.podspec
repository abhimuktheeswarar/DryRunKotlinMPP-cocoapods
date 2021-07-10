Pod::Spec.new do |spec|
    spec.name                     = 'dryrun'
    spec.version                  = '1.0.2-RC'
    spec.homepage                 = 'https://github.com/abhimuktheeswarar/DryRunKotlinMPP'
    spec.source                   = { :git => "https://github.com/abhimuktheeswarar/DryRunKotlinMPP-cocoapods.git", :tag => "v#{spec.version}" }
    spec.authors                  = 'Abhi Muktheeswarar'
    spec.license                  = 'The Apache Software License, Version 2.0'
    spec.summary                  = 'DryRunKotlinMPP Kotlin/Native module CocoaPods'
    spec.vendored_frameworks      = 'dryrun.xcframework'
    spec.static_framework         = true
    spec.libraries                = "c++"
    spec.module_name              = "#{spec.name}_umbrella"

    

    spec.pod_target_xcconfig 	= {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    spec.user_target_xcconfig 	= { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    spec.pod_target_xcconfig 	= {'EXCLUDED_ARCHS[sdk=watchsimulator*]' => 'arm64'}
    spec.user_target_xcconfig 	= { 'EXCLUDED_ARCHS[sdk=watchsimulator*]' => 'arm64' }



end