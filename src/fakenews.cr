require "cli"
require "./fakenews/cmd"

module Fakenews
  VERSION = "0.1.0"

  CACHE_DIR = "/tmp/fakenews"
  CACHE_FILE = "cache.db"
end

Fakenews::Cmd.run ARGV
