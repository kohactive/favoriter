module Favoriter
  module ActsAsFavoriter

    extend ActiveSupport::Concern
    
    included do
    end

    module ClassMethods
      def acts_as_favoriter(favorite_item=:favorites, opts={})
        self.has_many favorite_item, :as => :favoriter, :dependent => :destroy
      end
    end

  end
end

ActiveRecord::Base.send :include, Favoriter::ActsAsFavoriter