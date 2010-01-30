require 'rubygems'

require 'irb/completion'
require 'irb/ext/save-history'

# command history

ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# color coding

require 'wirble'
Wirble.init
Wirble.colorize

# helper methods

def timed(&block)
  start = Time.now
  yield
  Time.now - start
end
