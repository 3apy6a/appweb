class Halt # :nodoc:
  def reboot
    `reboot`
  end

  def power_off
    `poweroff`
  end
end
