Vagrant::Config.run do |config|
  config.vm.define :djangovm do |django_config|
    django_config.vm.box = "ubuntu-14"

    django_config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"

    django_config.vm.forward_port 80, 8090
    django_config.vm.forward_port 8000, 9001
  
    django_config.vm.provision :shell, :path => "sources.sh"
    django_config.vm.provision :shell, :path => "custom.sh"

    django_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "git"
      chef.add_recipe "apt"
      chef.add_recipe "apache2::mod_wsgi"
      chef.add_recipe "build-essential"
      chef.add_recipe "git"
      chef.add_recipe "vim"
    end
  end
end


