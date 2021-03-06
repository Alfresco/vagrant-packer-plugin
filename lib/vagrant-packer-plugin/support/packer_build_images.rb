require 'vagrant-packer-plugin/utils/packer_interface'

class PackerBuildImages
	def initialize(params, engine, chef_items)
		@params = params
		@chef_items = chef_items
		@engine = engine
	end

	def execute!
		packer = PackerInterface.new(@params, @engine)
		packer_defs = packer.get_defs(@chef_items)
		packer.run_defs(packer_defs)
    puts "Images built! Bye for now."
	end
end
