
namespace :chroot do
  desc 'install hosts, resolv and proc, do "chroot chroot" as root'
  task :install do
    sh 'sudo lh_chroot_hosts  install'
    sh 'sudo lh_chroot_resolv install'
    sh 'sudo "chroot chroot" as root'
    puts 'chroot install.'
  end
  desc 'remove hosts, resolv and proc'
  task :remove do
    sh 'sudo lh_chroot_hosts  remove'
    sh 'sudo lh_chroot_resolv remove'
    puts 'chroot remove.'
  end
end

