Smokestack::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin
end

ENV['NOVA_GIT_MASTER'] = "git://github.com/openstack/nova.git"
ENV['GLANCE_GIT_MASTER'] = "git://github.com/openstack/glance.git"
ENV['KEYSTONE_GIT_MASTER'] = "git://github.com/openstack/keystone.git"

ENV['OPENSTACK_VPC_URL'] = "git://github.com/dprince/openstack_vpc.git"

# Default Debian packager URLS
# These get used if the smoke tests don't specify a custom packager URL
ENV['NOVA_DEB_PACKAGER_URL'] = "lp:~rackspace-titan/nova/ubuntu-nova-vpc"
ENV['GLANCE_DEB_PACKAGER_URL'] = "lp:~openstack-ubuntu-packagers/glance/ubuntu"
ENV['KEYSTONE_DEB_PACKAGER_URL'] = "lp:~dan-prince/keystone/ubuntu-keystone-nodoc"
