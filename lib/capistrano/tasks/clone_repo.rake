# Clone the latest on master from the install profile repo
desc "Clone the install profile"
task :clone_repo do
	on roles(:all) do |host|
		info "Cloning the install profile..."
		execute "cd #{fetch(:deploy_to)}/profiles && git clone #{fetch(:repo_url)}"
		info "Install profile cloned successfully"
	end
end