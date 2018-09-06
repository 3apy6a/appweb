# class of sensor information output
class Sensor
  def initialize
    @info
  end

  def sensors_read
    @info = `sensors`
    @info.strip.split(/\n+/)
  end
end

info = Sensor.new.sensors_read
p info