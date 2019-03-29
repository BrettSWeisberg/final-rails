ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

module DefaultOptions
  def default_options
    super.merge!(Port: 3001)
  end
end
