require 'i18n_missing_keys'
require 'rails'
module I18nMissingKeys
  class Railtie < Rails::Railtie
    rake_tasks do
      # see https://github.com/ludicast/yaml_db/pull/7/files
      load File.expand_path('../../tasks/i18n_missing_keys.rake', __FILE__)
    end
  end
end