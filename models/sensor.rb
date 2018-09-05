class Sensor # :nodoc:
  def initialize
    @info
  end

  def sensors_read
    @info = `sensors`
    @info.split(/\n/)
  end
end
