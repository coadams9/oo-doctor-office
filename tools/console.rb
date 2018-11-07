require_relative '../config/environment.rb'

dr_j = Doctor.new("Julius", "Irving", "Dunking")
dr_strange = Doctor.new("Steven", "Strange", "Time")

will = Patient.new("Will", "George")
kwam = Patient.new("Kwam", "A")

app1 = Appointment.new(dr_j, will, "Gametime")


binding.pry
