Vagrant.configure("2") do |config|
   config.vm.box = "google/gce"	
   config.vm.provider :google do |google, override|
     google.google_project_id = "vagrant-test-373514"
     google.google_json_key_location = "/json file private k/vagrant-test-373514-6efb8242c626.json"
     # Can probably use a relative path here, I just happened to paste the full path in

     google.image_family = 'ubuntu-1804-lts'

     override.ssh.username = "adccg8"
     override.ssh.private_key_path = "~/.ssh/id_rsa"
   end
 end
