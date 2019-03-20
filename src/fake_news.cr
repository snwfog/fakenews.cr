require "cli"
require "./fake_news/cmd"

module FakeNews
  VERSION = "0.1.0"
end

FakeNews::Cmd.run ARGV
