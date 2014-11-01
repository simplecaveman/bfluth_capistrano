desc "Verify an already provisioned platform"
task :verify_platform do
	on roles(:all) do |host|
		info "Starting a verify of platform #{fetch(:application)}"
		execute "drush @platform_#{fetch(:application)} provision-verify"
		info "Platform #{fetch(:application)} verified" 
	end
end