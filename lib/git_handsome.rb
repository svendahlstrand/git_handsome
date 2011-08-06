#
require "git_handsome/version"
require 'json'

module GitHandsome
  def self.log
    json_string = '[' + `git log --format=format:'{@@commit@@:@@%H@@,@@author@@:@@%an@@,@@email@@:@@%ae@@,@@date@@:@@%ai@@,@@subject@@:@@%s@@},'`.chop + ']'
    json_string.gsub! '"', '\\"'
    json_string.gsub! '@@', '"'

    JSON.parse json_string
  end
end