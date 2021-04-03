
class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointment
    Appointment.all.select do |j|
      j.doctor == self
    end
  end

  def patients
    appointments.collect do |j|
      j.patient
    end
  end

end
