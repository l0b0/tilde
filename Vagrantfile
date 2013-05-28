# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise32"

  # Proxy
  if ENV['FTP_PROXY']
    config.vm.provision :shell,
      :inline => "echo 'Acquire::ftp::proxy \"#{ENV['FTP_PROXY']}\";' >> /etc/apt/apt.conf.d/01proxy"
    config.vm.provision :shell,
      :inline => "echo 'FTP_PROXY=#{ENV['FTP_PROXY']}' >> /etc/environment"
  end
  if ENV['HTTP_PROXY']
    config.vm.provision :shell,
      :inline => "echo 'Acquire::http::proxy \"#{ENV['HTTP_PROXY']}\";' >> /etc/apt/apt.conf.d/01proxy"
    config.vm.provision :shell,
      :inline => "echo 'HTTP_PROXY=#{ENV['HTTP_PROXY']}' >> /etc/environment"
  end
  if ENV['HTTPS_PROXY']
    config.vm.provision :shell,
      :inline => "echo 'Acquire::https::proxy \"#{ENV['HTTPS_PROXY']}\";' >> /etc/apt/apt.conf.d/01proxy"
    config.vm.provision :shell,
      :inline => "echo 'HTTPS_PROXY=#{ENV['HTTPS_PROXY']}' >> /etc/environment"
  end
  if ENV['NO_PROXY']
    config.vm.provision :shell,
      :inline => "echo 'NO_PROXY=#{ENV['NO_PROXY']}' >> /etc/environment"
  end
  if ENV['SOCKS_PROXY']
    config.vm.provision :shell,
      :inline => "echo 'Acquire::socks::proxy \"#{ENV['SOCKS_PROXY']}\";' >> /etc/apt/apt.conf.d/01proxy"
    config.vm.provision :shell,
      :inline => "echo 'SOCKS_PROXY=#{ENV['SOCKS_PROXY']}' >> /etc/environment"
  end

  # Bootstrap
  config.vm.provision :shell, :path => "bootstrap.sh"
end
