class Patient
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_appointment(doctor, date)
    new_appt_instance = Appointment.new(self, doctor, date)
    new_appt_instance
  end
  def appointments
    final_array = []
    Appointment.all.each do |appointment|
      if appointment.patient == self
        final_array << appointment
      end
    end
    final_array
  end
  def doctors
    solutions = []
    Doctor.all.each do |doctor|
      unique_case = true
      solutions.each do |solution|
        if doctor == solution
          unique_case = false
        end
      end
      if unique_case == true
        solutions << doctor
      end
    end
    solutions
  end
end