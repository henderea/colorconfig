require 'mvn2/plugin'
class ColorConfigPlugin
  extend Mvn2::Plugin
  extend Mvn2::PluginType

  CONFIG_FILE = File.expand_path('~/mvn2-colors.yaml')

  register :option, sym: :override_colors, names: %w(-v --override-colors), desc: 'override the colors with the ones configured by the colorconfig script'

  register(:color_override, priority: 100) { |options| (options[:override_colors] && File.exist?(CONFIG_FILE)) ? YAML::load_file(CONFIG_FILE) : nil }
end