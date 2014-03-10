require_dependency "custom_field"
require "localizable"

module CustomFieldPatch
  def self.included(base)
    base.class_eval do

      def name(original = false)
        return(original ? super() : Localizable.localize("custom_field", id, super()))
      end

    end
  end
end
