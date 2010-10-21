
task :default => [:all]

desc "config and build RubyLive"
task :all => [:config, :build]

desc "config RubyLive"
task :config => [:clean] do
  sh 'lb config'
end

desc "build RubyLive"
task :build do
  sh 'sudo lb build'
end

desc "clean generated files"
task :clean do
  sh 'sudo lb clean'
end

desc "distclean generated files"
task :distclean => [:clean] do
  sh 'sudo lb clean --purge'
  sh 'sudo rm -f *.iso *.img *.list *.packages *.buildlog *.md5sum'
end

# old tasks
namespace :chroot do
  desc 'install hosts, resolv and proc, do "chroot chroot" as root'
  task :install do
    sh 'sudo lb chroot_hosts  install'
    sh 'sudo lb chroot_resolv install'
    sh 'sudo "chroot chroot" as root'
    puts 'chroot install.'
  end
  desc 'remove hosts, resolv and proc'
  task :remove do
    sh 'sudo lb chroot_hosts  remove'
    sh 'sudo lb chroot_resolv remove'
    puts 'chroot remove.'
  end
end

