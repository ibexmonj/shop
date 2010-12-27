01	# See http://unicorn.bogomips.org/Unicorn/Configurator.html for complete
02	# documentation.
03	worker_processes 4
04	# Help ensure your application will always spawn in the symlinked
05	# "current" directory that Capistrano sets up.
06	working_directory "/home/ibex/shop/current"
07	# listen on both a Unix domain socket and a TCP port,
08	# we use a shorter backlog for quicker failover when busy
09	listen "/tmp/shop.socket", :backlog => 64
10	# nuke workers after 30 seconds instead of 60 seconds (the default)
11	timeout 30
12	# feel free to point this anywhere accessible on the filesystem
13	user 'ibex',
14	shared_path = “/home/ibex/shop/shared”
15	pid "#{shared_path}/pids/unicorn.pid"
16	stderr_path "#{shared_path}/log/unicorn.stderr.log"
17	stdout_path "#{shared_path}/log/unicorn.stdout.log"
