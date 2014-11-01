desc "Check if agent forwarding is working"
task :forwarding do
	on roles(:all) do |h|
		if test("env | grep SSH_AUTH_SOCK")
			info "Agent forwarding is up on #{h}"
		else
			error "Agent forwarding is NOT up on #{h}"
		end
	end
end