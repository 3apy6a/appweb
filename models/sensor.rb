class Sensor
  def initialize
    @res = []
  def sensors_read
    if @result = `sensors`
      p @res = @result.split(/\n/)
    end
  end

  def result
    @res << @result
    p @res.split(/\n/)
  end
end 

res = Sensor.new.sensors_read
