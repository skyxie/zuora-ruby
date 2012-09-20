module Zuora
  module Ruby
    module Model

      # Module to be extended for models that do not change very often
      module Cache
        include ClassMethods # requires ClassMethods

        def all
          cache
        end

        def find_by_id(id)
          ( @id_idx ||= Hash[cache.map{|i| [i.id, i]}] )[id]
        end

        def find_by_name(name)
          ( @name_idx ||= Hash[cache.map{|i| [i.name, i]}] )[name]
        end

        def cache
          load_from_remote unless @cache
          @cache
        end

        def load_from_remote
          @cache = self.query
          @id_idx = @name_idx = nil
        end
        alias :reload :load_from_remote
      end

    end
  end
end