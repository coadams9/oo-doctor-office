class Doctor
  attr_reader :first_name, :last_name
  attr_accessor :speciality

  @@all = []

  def initialize(first_name, last_name, speciality="general")
    @first_name = first_name
    @last_name = last_name
    @speciality = speciality
    @@all << self
  end

  def appointments
    # get all my appointments and filter by the ones that I am associated with.
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def appointment_count
    self.appointments.count
  end

  def patients
    # use the methods that we've created and TRANSFORM my array of appointments to an array of patients
    self.appointments.map do |appointment|
      appointment.patient
    end

    # another way of tackling this
    # array = []
    # self.appointments.each do |appointment|
    #   array.push(appointment.patient)
    # end
  end

  def self.all
    @@all
  end

  def self.full_names
    self.all.map do |doc|
      "#{doc.first_name} #{doc.last_name}"
    end
  end

end
