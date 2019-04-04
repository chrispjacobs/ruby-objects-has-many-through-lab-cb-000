class Doctor
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  attr_accessor :name
  def new_appointment(patient_object, date)
    new_appt = appointment.new(patient_object, self, date)
    new_appt.doctor = self
    new_appt
  end
  def appointments
    resulting_array = []
    Appointment.all do |appointment|
      if appointment.doctor == self
        resulting_array << appointment
      end
    end
    resulting_array
  end
end
