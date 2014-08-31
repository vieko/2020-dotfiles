require_relative "lib/rake"
require_relative "lib/os"
require_relative "lib/sh"
require_relative "lib/output"

verbose(false)

if is_mac?
  desc 'Setup/update homebrew & packages'
  task :update => 'pkg:homebrew:update'
elsif is_linux?
  desc 'Setup/update packages'
  task :update => 'pkg:aptitude:update'
end

namespace :pkg do
  load_all("pkg/*.rake")
end