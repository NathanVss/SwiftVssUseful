# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'VssUseful' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for VssUseful
  pod 'SwiftyJSON', '~> 2.3'
  pod "STRegex", '~> 0.4'
  target 'VssUsefulTests' do
    inherit! :search_paths
    # Pods for testing
  end


	post_install do |installer|
  		installer.pods_project.targets.each do |target|
    			target.build_configurations.each do |config|
      				config.build_settings['SWIFT_VERSION'] = '2.3'
    			end
  		end
	end
end
