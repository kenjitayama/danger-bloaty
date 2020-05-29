module Danger
  # This is your plugin class. Any attributes or methods you expose here will
  # be available from within your Dangerfile.
  #
  # To be published on the Danger plugins site, you will need to have
  # the public interface documented. Danger uses [YARD](http://yardoc.org/)
  # for generating documentation from your plugin source, and you can verify
  # by running `danger plugins lint` or `bundle exec rake spec`.
  #
  # You should replace these comments with a public description of your library.
  #
  # @example Ensure people are well warned about merging on Mondays
  #
  #          my_plugin.warn_on_mondays
  #
  # @see  Kenji Tayama/danger-bloaty
  # @tags monday, weekends, time, rattata
  #
  class DangerBloaty < Plugin

    # An attribute that you can read/write from your Dangerfile
    #
    # @return   [Array<String>]
    attr_accessor :my_attribute

    # A method that you can call from your Dangerfile
    # @return   [Array<String>]
    #
    def warn_on_mondays
      warn 'Trying to merge code on a Monday' if Date.today.wday == 1
    end

    def warn_just_for_test
      warn 'Just trying to test this danger plugin'
    end

    def notify_bloaty

      result = `bloaty #{ENV['DANGER_BLOATY_APP_BINARY_PATH']}`

      markdown '<details><summary>bloaty result</summary>'
      markdown ''
      markdown '```'
      markdown result
      markdown '```'
      markdown ''
      markdown '</details>'
    end
  end
end
