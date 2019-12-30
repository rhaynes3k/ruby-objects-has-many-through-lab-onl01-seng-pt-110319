class Appointment
  attr_accessor :date, :name, :doctor
  
    @@all = []
    
  def initialize(name, date, doctor)
    @date = date
    @name = name
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def patient
    self.doctor.patients.find{|p|p}
  end
  
end