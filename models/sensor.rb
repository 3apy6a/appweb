# class of sensor information output
class Sensor
  def initialize
    @info
  end

  def sensors_read
    begin
      @info = `sensors`
      @info.strip.split(/\n+/)
    rescue => exc
      puts "Exception Class: #{ exc.class.name }"
      puts "Exception Message: #{ exc.message }"
      puts "Exception Backtrace: #{ exc.backtrace }" 
    end
    
  end
end
