# Download the latest version of drupal
desc "Download A New Install of Drupal"
task :drush_dl do
	on roles(:all) do |host|
		if test("drush version")
			if test("[ -w #{fetch(:deploy_to)} ]")
				info "Folder #{fetch(:deploy_to)} exists, deleting and downloaded platform..."
				execute "rm -rf #{fetch(:deploy_to)}"
				execute "drush dl drupal && mv drupal-7* #{fetch(:deploy_to)}"
			else
				info "Making directory #{fetch(:deploy_to)} and downloading platform..."
				execute "drush dl drupal && mv drupal-7* #{fetch(:deploy_to)}"
			end
		else
			error "Drush does not exist on #{host}"
		end
	end
end