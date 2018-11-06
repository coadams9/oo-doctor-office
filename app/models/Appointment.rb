class Appointment

  def initialize(doctor, patient, date=Date.now, location="Flatiron")
    @doctor = doctor
    @patient = patient
    @date = date
    @location = location
  end

  def doctor

  end

  def patient

  end

  def self.find_by_location

  end

end
