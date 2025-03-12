# Uncomment the next line to define a global platform for your project
 platform :ios, '14.0'

target 'QUYENND_MV_2504' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'Toast-Swift', '~> 5.0.1'

  # Pods for QUYENND_MV_2503

end
post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
               end
          end
   end
end
