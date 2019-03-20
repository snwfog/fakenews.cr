require "cli"
require "./fakenews/cmd"

module Fakenews
  VERSION = "0.1.0"
end

Fakenews::Cmd.run ARGV
