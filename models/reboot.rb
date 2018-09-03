class Halt < Sinatra::Base

    def self.reboot
    reboot = `sudo reboot`
  end
  
  def powero_off
    powero_off = `sudo poweroff`
  end
end

