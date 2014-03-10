require_dependency "issue_status"
require "localizable"

module IssueStatusPatch
  def self.included(base)
    base.class_eval do

      def name(original = false)
        return(original ? super() : Localizable.localize("issue_status", id, super()))
      end

    end
  end
end
