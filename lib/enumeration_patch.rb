require_dependency "enumeration"
require "localizable"

module EnumerationPatch
  def self.included(base)
    base.class_eval do

      def name(original = false)
        return(original ? super() : Localizable.localize("enumeration", id, super()))
      end

    end
  end
end
