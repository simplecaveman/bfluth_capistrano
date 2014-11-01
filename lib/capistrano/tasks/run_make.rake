# Perform a drush make on install profile
desc "Run make file"
task :run_make do
	on roles(:all) do |host|
		info "Run drush make..."
		execute "cd #{fetch(:deploy_to)}/profiles/#{fetch(:repo_name)} && drush make --no-core --contrib-destination=. #{fetch(:repo_name)}.make --no-gitinfofile -y"
		info "Drush make completed successfully!"
	end
end