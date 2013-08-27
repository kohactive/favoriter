module Favoriter
  module ActsAsFavoritable

    extend ActiveSupport::Concern
    
    included do
    end

    module ClassMethods
      def acts_as_favoritable(favorites_item=:favorites, opts={})
        self.has_many favorites_item, :as => :favoritable
      end
    end

  end
end

ActiveRecord::Base.send :include, Favoriter::ActsAsFavoritable