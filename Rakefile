
task :default => [:all]

desc "config and build RubyLive"
task :all => [:config, :build]

desc "config RubyLive"
task :config => [:clean] do
  sh 'lh config'
end

desc "build RubyLive"
task :build do
  sh 'sudo lh build'
end

desc "clean generated files"
task :clean do
  sh 'sudo lh clean'
end

desc "distclean generated files"
task :distclean => [:clean] do
  sh 'sudo lh clean --purge'
  sh 'sudo rm -f *.iso *.img *.list *.packages *.buildlog *.md5sum'
end

# old tasks
namespace :chroot do
  desc 'install hosts, resolv and proc, do "chroot chroot" as root'
  task :install do
    sh 'sudo lh chroot_hosts  install'
    sh 'sudo lh chroot_resolv install'
    sh 'sudo "chroot chroot" as root'
    puts 'chroot install.'
  end
  desc 'remove hosts, resolv and proc'
  task :remove do
    sh 'sudo lh chroot_hosts  remove'
    sh 'sudo lh chroot_resolv remove'
    puts 'chroot remove.'
  end
end

