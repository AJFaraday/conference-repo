require 'socket'

class UglyWasp

  attr_accessor :pd_connection

  def initialize(port=9000)
    self.pd_connection = UDPSocket.new
    self.pd_connection.connect('127.0.0.1',port)
    dance('The ugly wasp says hi!')
    set_volume('quietly')
  end 

  def dance(message)
    self.pd_connection.send("#{message};\n",0)
  end

  def hum(pitch, time)
    dance("Humming note #{pitch.to_i} for #{time}ms")
    dance("pitch #{pitch.to_i}")
    dance("hit #{time}")
  end

  def set_volume(volume)
    dance("volume #{get_volume(volume)}")
    dance("Humming #{volume}")
  end

  VOLUMES = {
    'inaudibly' => 0.01,
    'softly' => 0.1,
    'quietly' => 0.2,
    'quite quietly' => 0.4,
    'quite loudly' => 0.6,
    'loudly' => 0.8,
    'ear-splittingly' => 1
  }

  def get_volume(volume)
    if volume.is_a?(Numeric)
      return volume if volume <= 1
      return 0.5 
    end 
    if VOLUMES.keys.include?(volume)
      VOLUMES[volume] 
    end
  end 

end 
