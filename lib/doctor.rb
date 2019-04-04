class Doctor
  @@all = []
  def new_appointment(patient_object, date)
    new_appt = appointment.new(patient_object, self, date)
    new_appt.doctor = self
    new_appt
  end
end