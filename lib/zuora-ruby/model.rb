module Zuora
  module Ruby

    module Model

      module InstanceMethods
        # Converts a soap object into a hash
        def to_hash
          Hash[self.instance_variables.map{|v| [v.gsub(/^@/, ''), self.instance_variable_get(v)] }]
        end
      end

      module ClassMethods
        def model_name
          self.name.gsub(/^ZUORA::/,'')
        end

        # Applies conditions to a query and requests the query to zuora
        def query(conditions = nil)
          str =  "select #{self.const_get("QUERY_FIELDS").join(", ")} from #{model_name}"
          str += " where #{conditions}" if conditions
          response = Api.query(str)
          if response.result
            response.result.records
          end
        end

        def all
          query
        end

        def find(conditions)
          query(conditions)
        end

        def find_by_id(id)
          find("Id = #{id}")
        end

        def find_by_name(name)
          find("Name = #{name}")
        end
      end

    end

  end
end