class Patient
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  def new_appointment(doctor, date)
    new_appt = Appointment.new(date, self, doctor)
    @appointments << new_appt
  end 
  def appointments
    @appointments
  end 
end 