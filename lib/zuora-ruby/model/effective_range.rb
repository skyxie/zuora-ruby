module Zuora
  module Ruby
    module Model

      # Module to be extended for models with an effective start and end date (i.e. an effective range)
      # Adds methods to search for records within an effective range
      module EffectiveRange
        include ClassMethods # requires ClassMethods
        
        DATE_TIME_FORMAT = "%Y-%m-%dT%T.000%z"

        def effective_at(time)
          str = time.strftime(DATE_TIME_FORMAT)
          query("EffectiveStartDate < '#{str}' and EffectiveEndDate > '#{str}'")
        end

        def effective
          effective_at(Time.now)
        end
      end

    end
  end
end