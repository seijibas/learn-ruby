class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def time_string
    h = @seconds/3600
    m = @seconds%3600/60
    s = @seconds%3600%60
    sprintf("%02d:%02d:%02d", h, m, s)
  end
end
