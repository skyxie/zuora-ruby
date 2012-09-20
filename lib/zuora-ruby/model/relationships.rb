module Zuora
  module Ruby
    module Model

      # Module to be extended for models that have relationships with other models
      # ActiveRecord relationships without ActiveRecord
      module Relationships
        include ClassMethods # requries ClassMethods

        def has_many(other)
          namespace_class = self.namespace
          attribute_name = self.model_name[0,1].downcase + self.model_name[1..-1]  + "Id"
          self.send("define_method", other.to_s.pluralize) do
            namespace_class.const_get(other.to_s.classify).all.select{|i| self.id == i.send(attribute_name)}
          end
        end

        def belongs_to(other)
          other_class_name = other.to_s.classify
          namespace_class = self.namespace
          attribute_name = other_class_name[0,1].downcase + other_class_name[1..-1] + "Id"
          self.send("define_method", other) do
            namespace_class.const_get(other_class_name).find_by_id(self.send(attribute_name))
          end
        end
      end

    end
  end
end