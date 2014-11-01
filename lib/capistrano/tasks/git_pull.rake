desc "Perform a git pull of the install profile"
task :git_pull do
	on roles(:all) do |host|
		info "Doing a git pull of install profile..."
		execute "cd #{fetch(:deploy_to)}/profiles/#{fetch(:repo_name)} && git pull"
	end
end