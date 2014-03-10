require_dependency "tracker"
require "localizable"

module TrackerPatch
  def self.included(base)
    base.class_eval do

      def name(original = false)
        return(original ? super() : Localizable.localize("tracker", id, super()))
      end

    end
  end
end
