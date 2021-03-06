require 'active_scaffold_mobile/engine'
require 'active_scaffold_mobile/version'
require 'mobile-fu'

module ActiveScaffoldMobile
  cattr_reader :plugin_directory
  @@plugin_directory = Pathname.new(File.expand_path('../..', __FILE__))
end

module ActiveScaffold
  module Actions
    ActiveScaffold.autoload_subdir('actions', self, File.dirname(__FILE__))
  end

  module Config
    ActiveScaffold.autoload_subdir('config', self, File.dirname(__FILE__))
  end

  module Helpers
    ActiveScaffold.autoload_subdir('helpers', self, File.dirname(__FILE__))
  end
end
