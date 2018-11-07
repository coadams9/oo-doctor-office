class Appointment
  attr_reader :doctor, :patient
  attr_accessor :location, :time

  @@all = []

  def initialize(doctor, patient, time, location="MSG")
    @doctor = doctor
    @patient = patient
    @location = location
    @time = time
    @@all << self
  end
  

  # remember this is a implementation of mass assignment,
  # don't worry about knowing this for the code challenge
  # def initialize(hash)
  #   @doctor = hash["doctor"]
  #   @patient = hash["patient"]
  #   @location = hash["location"]
  #   @time = hash["time"]
  #   @@all << self
  # end

  def self.all
    @@all
  end

  def self.find_by_location

  end

end
