require "rubygems"
require "mechanize"
class Viblo
  def initialize
    @agent = Mechanize.new do |a|
      a.user_agent_alias = "Linux Firefox"
      a.open_timeout = 3
      a.read_timeout = 4
      a.keep_alive = true
      a.redirect_ok = true
    end
  end

  def do_it(url)
    page = @agent.get(url)
    puts page
  rescue => e
    puts e
  end
end
TIMES = ARGV[1].to_i
puts TIMES
TIMES.to_i.times do
  Viblo.new().do_it(ARGV[0])
  # sleep 1
end
