require 'i18n_missing_keys'
require 'rails'
module I18nMissingKeys
  class Railtie < Rails::Railtie
    rake_tasks do
      require '../tasks/i18n_missing_keys.rake'
    end
  end
end