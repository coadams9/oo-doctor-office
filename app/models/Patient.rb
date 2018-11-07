class Patient
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    # I need to get all of the appointments assocatied with me
    # ---------------------

    # first get all of the appointments **Appointment.all**
    # filter all of the appointments to get all associated with me **.select**
    # return the list of appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end

  def doctors
    # use the methods that I've already created
  end

  def self.find_by_name

  end

end
