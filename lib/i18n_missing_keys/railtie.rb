require 'i18n_missing_keys'
require 'rails'
module I18nMissingKeys
  class Railtie < Rails::Railtie
    rake_tasks do
      #TODO require fails
      # http://blog.nathanhumbert.com/2010/02/rails-3-loading-rake-tasks-from-gem.html
      # https://blog.engineyard.com/2010/extending-rails-3-with-railties
      # http://stackoverflow.com/questions/742633/make-rake-task-from-gem-available-everywhere
      #require 'lib/tasks/i18n_missing_keys.rake'
      load File.expand_path('../../tasks/i18n_missing_keys.rake', __FILE__)
    end
  end
end