module Zuora
  module Ruby

    # This module describes the basic skeleton for a Zuora model
    module Model

      attr_accessor :fields
      
      # Zuora model name - takes last part of the class name split by ::
      def model_name
        self.name.split(/::/).last
      end

      # Applies conditions to a query and requests the query to zuora
      def query(conditions = nil)
        str = "select #{fields.join(", ")} from #{model_name}"
        str += " where #{conditions}" if conditions
        Api.query(str)
      end

      def translate_type(key, val)
        case key
        when /^(Subscription|Term|Effective)(Start|End)Date$/
          Date.strptime(val, DATE_FORMAT)
        when /^(Created|Updated|ContractAcceptance|ContractEffective|ServiceActivation)Date$/
          DateTime.strptime(val, DATE_TIME_FORMAT)
        else
          val
        end
      end

      # Parses the result from a query response into a Hash
      def parse_response(response)
        if response.result.size.to_i > 1
          response.result.records.map{ |r| to_hash(r) }
        elsif response.result.size.to_i == 1
          to_hash(response.result.records)
        end
      end

      # Converts a soap object into a hash
      def to_hash(soap_obj)
        fields.inject({"Class" => self.name}) do |hsh, f|
          hsh.merge(f => translate_type(f, soap_obj[f]))
        end
      end

      def all
        parse_response(query)
      end

      def find(conditions)
        parse_response(query(conditions))
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