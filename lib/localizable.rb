module Localizable

  def self.localize(type, id, name)
    value = name
    unless Setting["plugin_localizable"].nil?
      unless Setting["plugin_localizable"]["locales"].nil?
        unless Setting["plugin_localizable"]["locales"][type].nil?
          unless Setting["plugin_localizable"]["locales"][type][id.to_s].nil?
            unless Setting["plugin_localizable"]["locales"][type][id.to_s][User.current.language.to_s].blank?
              value = Setting["plugin_localizable"]["locales"][type][id.to_s][User.current.language.to_s]
            end
          end
        end
      end
    end
    return(value)
  end

end
