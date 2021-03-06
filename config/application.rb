require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Produtividade
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.encoding = 'utf-8'
    config.i18n.default_locale = 'pt-BR'
  end
end