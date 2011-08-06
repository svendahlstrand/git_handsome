require 'git_handsome'

get '/' do
  commits = GitHandsome::log

  @commits_by_day = commits.group_by do |commit|
    Date.parse commit["date"]
  end

  @commits_per_day = @commits_by_day.map do |day, commits|
    [day.to_s, commits.count]
  end.reverse.to_s

  commits_by_author = commits.group_by do |commit|
    commit["author"]
  end

  @commits_by_author = commits_by_author.map do |author, commits|
    [author, commits.count]
  end.reverse.to_s

  erb :index
end