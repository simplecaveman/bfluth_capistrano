# Clone the latest on master from the install profile repo
desc "Delete the old install profile before cloning it"
task :delete_profile do
	on roles(:all) do |host|
		info "Deleting the install profile..."
		execute "cd #{fetch(:deploy_to)}/profiles && rm -rf #{fetch(:repo_name)}"
		info "Install profile removed successfully"
	end
end