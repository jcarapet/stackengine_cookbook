require 'serverspec' 
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe file('/usr/local/stackengine/stackengine') do 
	it { should be_file}
end

describe port (80) do 
	it { should be_listening }
end
