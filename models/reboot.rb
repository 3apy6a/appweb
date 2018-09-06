# class for power management
class Halt
  def reboot
    `reboot`
  end

  def power_off
    `poweroff`
  end
end
