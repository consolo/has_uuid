gem 'activerecord'

module Consolo
  module HasUuid
    module ClassMethods
      def has_uuid
        self.class_eval do
          self.primary_key = 'uuid'
          before_create :generate_uuid
        end
        
        include Consolo::HasUuid::InstanceMethods
      end
    end
    
    module InstanceMethods
      def generate_uuid
        self.uuid = UUIDTools::UUID.random_create.to_s
      end
    end
  end
end

ActiveRecord::Base.send :extend, Consolo::HasUuid::ClassMethods
