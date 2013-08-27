require 'rails/generators'
require 'rails/generators/named_base'
require 'generators/favoriter/install/model/model_generator'

module Favoriter
  class InstallGenerator < Rails::Generators::Base

    desc "Intall Favoriter"
    argument :favorite_item, type: :string, default: "favorite"

    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    def install
      Favoriter::ModelGenerator.start([favorite_item])
    end
  end
end