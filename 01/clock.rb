#! /usr/bin/env ruby
# encoding: utf-8

class Clock
    def time
        Time.now
    end
end

class AlarmClock < Clock
    def set_alarm(time, listener)
        sleep(time)
        listener.wakeup
    end
end

class ClockSetter
    def wakeup
        puts "WAKE UP!"
    end
end

clock = AlarmClock.new
puts clock.time
clock.set_alarm(5, ClockSetter.new)