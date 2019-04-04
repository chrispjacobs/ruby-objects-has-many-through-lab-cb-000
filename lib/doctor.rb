class Doctor
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  attr_accessor :name
  def new_appointment(patient_object, date)
    new_appt = Appointment.new(patient_object, self, date)
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
  def patients
    appointments_array = self.appointments
    solution_array = []
    appointments_array.each do |appointment|
      unique_condition = true
      solution_array.each do |patient|
        if appointment.patient == patient
          unique_condition = false
        end
      end
      if unique_condition == true
        solution_array << appointment.patient
      end
    end
    solution_array
  end
  def self.all
    @@all
  end
end
