require_dependency "role"
require "localizable"

module RolePatch
  def self.included(base)
    base.class_eval do

      def name(original = false)
        return(original ? super() : Localizable.localize("role", id, super()))
      end

    end
  end
end
