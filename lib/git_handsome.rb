#
require "git_handsome/version"
require 'json'

module GitHandsome
  def self.log
    json_string = '[' + `git log --format=format:'{!!00!!commit!!00!!:!!00!!%H!!00!!,!!00!!author!!00!!:!!00!!%an!!00!!,!!00!!email!!00!!:!!00!!%ae!!00!!,!!00!!date!!00!!:!!00!!%ai!!00!!,!!00!!subject!!00!!:!!00!!%s!!00!!},'`.chop + ']'
    json_string.gsub! '"', '\\"'
    json_string.gsub! '!!00!!', '"'

    JSON.parse json_string
  end
end
