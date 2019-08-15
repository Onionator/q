
require("fileutils")
user_name = ENV["USER"]
location = Dir.pwd
while Dir.pwd != "/" do
  FileUtils.cd("..")
end
FileUtils.cd("/Users/#{user_name}/Desktop")
clown_file = File.open("/Users/#{user_name}/Desktop/q/clown.txt")
clown = clown_file.read
clown_file.close
FileUtils.cd("#{location}")
puts clown
system 'open -a Terminal "`pwd`"'


# source ~/desktop/q/lib/q.rb <------ put this in .bash_profile
