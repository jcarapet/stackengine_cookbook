require 'spec_helper'

describe "stackengine::default" do 
	let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe)}
	it "should install docker on the base" do 
		expect(chef_run).to include_recipe('docker::default')
	end
	it "should include recipe to make sure up to date" do 
		expect(chef_run).to include_recipe('apt::default')
	end
	it "should build stackengine home dir" do 
		expect(chef_run).to create_directory('/usr/local/stackengine').with(
			:mode => '0755'
			)
	end
	it "should create log stackengine log directory" do 
		expect(chef_run).to create_directory('/var/log/stackengine').with(
			:mode => '0755'
			)
	end
	it "should pull the stackengine binary" do 
		expect(chef_run).to create_remote_file('/usr/local/stackengine/stackengine')
	end
end