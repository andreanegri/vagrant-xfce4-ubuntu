# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/xenial64'

  config.vm.box_check_update = false

  config.vm.host_name = 'xfce4.ubuntu64.vagrantup.com'

  config.vm.network 'forwarded_port', guest: 22,   host: 2170, id: 'ssh', auto_correct: true

  # config.vm.synced_folder '../data', '/vagrant_data'

  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.name = 'devbox-ubuntu-xfce'
    vb.memory = 4096
    vb.cpus = 2
    vb.customize ['modifyvm', :id, '--vram', '256']
    vb.customize ['modifyvm', :id, '--accelerate2dvideo', 'off']
    vb.customize ['modifyvm', :id, '--accelerate3d', 'on']
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
    # vb.customize ['setextradata', :id, 'GUI/HiDPI/UnscaledOutput', '1']
  end

  # Copy private key to VM for Git and other tools
  config.vm.provision 'file', source: "#{ENV['HOME']}/.ssh/id_rsa", destination: '~/.ssh/id_rsa'

  config.vm.provision 'shell', privileged: false, path: 'provision/base.sh',          name: 'base.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/deb.sh',           name: 'deb.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/git.sh',           name: 'git.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/xfce4.sh',         name: 'xfce4.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/vim.sh',           name: 'vim.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/compilers.sh',     name: 'compilers.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/fonts.sh',         name: 'fonts.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/zsh.sh',           name: 'zsh.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/google-chrome.sh', name: 'google-chrome.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/local.sh',         name: 'local.sh'
    #config.vm.provision 'shell', privileged: false, path: 'provision/atom.sh',          name: 'atom.sh'

  config.vm.provision 'file', source: "dotfiles/bashrc", destination: '/tmp/.bashrc'
  config.vm.provision 'file', source: "dotfiles/zshrc",  destination: '/tmp/.zshrc'
  config.vm.provision 'file', source: "config/terminator.config",  destination: '/tmp/terminator.config'

  config.vm.provision 'shell', privileged: false, path: 'provision/configuration.sh', name: 'configuration.sh'
end
