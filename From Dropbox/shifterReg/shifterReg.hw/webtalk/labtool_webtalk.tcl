webtalk_init -webtalk_dir D:/onedrive/WSU/EE214/shifterReg/shifterReg.hw/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Thu Mar 24 18:46:37 2016" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "Vivado v2015.4 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "1412921" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "WIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "211140924_0_0_462" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "labtool" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "d3055c8732b9577e944d686ffdee475d" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "1cca17fd-03a8-4038-aeb7-ac8f4c2ec5f4" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "2" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Microsoft Windows 8 or later , 64-bit" -context "user_environment"
webtalk_add_data -client project -key os_release -value "major release  (build 9200)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-5700HQ CPU @ 2.70GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2694 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "17.000 GB" -context "user_environment"
webtalk_register_client -client labtool
webtalk_add_data -client labtool -key chain -value "0362D093" -context "labtool\\usage"
webtalk_add_data -client labtool -key pgmcnt -value "01:00:00" -context "labtool\\usage"
webtalk_add_data -client labtool -key cable -value "Digilent/Basys3/15000000:" -context "labtool\\usage"
webtalk_transmit -clientid 2728436927 -regid "211140924_0_0_462" -xml D:/onedrive/WSU/EE214/shifterReg/shifterReg.hw/webtalk/usage_statistics_ext_labtool.xml -html D:/onedrive/WSU/EE214/shifterReg/shifterReg.hw/webtalk/usage_statistics_ext_labtool.html -wdm D:/onedrive/WSU/EE214/shifterReg/shifterReg.hw/webtalk/usage_statistics_ext_labtool.wdm -intro "<H3>LABTOOL Usage Report</H3><BR>"
webtalk_terminate
