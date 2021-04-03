
class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |j|
      j.patient == self
    end
  end

  def doctors
    Appointment.all.collect do |j|
      j.doctor
    end
  end

end
