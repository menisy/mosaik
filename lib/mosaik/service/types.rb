# frozen_string_literal: true

module Mosaik
  class Service
    module Types
      # Expose Dry types with coercible defaults matching original behavior
      include Dry.Types(default: :params)

      Any = Nominal::Any
      String = Coercible::String
      Symbol = Coercible::Symbol
      Integer = Coercible::Integer
      Float = Coercible::Float
      Date = Params::Date
      Time = Params::Time
      Bool = Params::Bool
      Class = Strict::Class
    end
  end
end


