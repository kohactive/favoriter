module Favoriter

  class ModelGenerator < ActiveRecord::Generators::ModelGenerator
    source_root File.expand_path('../templates', __FILE__)
    class_option :migration, :type => :boolean, :default => true

    def accessible_attributes
      []
    end
  end

end