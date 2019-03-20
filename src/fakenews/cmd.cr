require "file_utils"

require "cli"
require "sqlite3"
require "faker"

require "./models/request"

module Fakenews
  class Cmd < Cli::Supercommand
    # command "generate", default: true

    class Generate < Cli::Command
      # property cache_path : String
      # property connection_addr : String

      # def initialize(*args)
      #   super

        # @cache_path = "#{CACHE_DIR}/#{CACHE_FILE}"
        # @connection_addr = "sqlite3://#{@cache_path}"
      # end

      def run
        puts "Here is a new request"
        puts Request.new.to_pretty_json
      end

      # @deprecated
      def run_with_cache
        cache = create_db
        puts "Creating cache db #{@cache_path}"

        unless table_exist? "pages"
          puts "Creating `pages` table"
          with_conn { |db| db.exec "CREATE TABLE pages(url TEXT)" }
        end

        # Execute in batch
        batch_size = 5000
        with_conn do |db|
          query = <<-SQL
            INSERT INTO pages (url)
            VALUES (?)
          SQL

          batch_size.times { db.exec query, [ Faker::Internet.url ]}
        end
      end

      private def create_db
        unless Dir.exists? CACHE_DIR
          FileUtils.mkdir CACHE_DIR
        end

        unless File.exists? @cache_path
          FileUtils.touch @cache_path
        end

        File.open @cache_path
      end

      private def table_exist?(table_name)
        puts "Checking if #{table_name} exists"
        rows_count = 0

        with_conn do |db|
          rows_count = db.scalar <<-SQL
            SELECT COUNT(*)
            FROM sqlite_master
            WHERE type = 'table' AND
                  name = '#{table_name}'
          SQL
        end
        rows_count.as(Int32 | Int64) > 0
      end

      # WARN: Block forward, according to doc, is slower
      # https://crystal-lang.org/reference/syntax_and_semantics/block_forwarding.html
      private def with_conn(&block : DB::Database ->)
        DB.open(@connection_addr, &block)
      end
    end
  end
end
