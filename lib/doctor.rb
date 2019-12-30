class Doctor
  attr_accessor :name
  
    @@all = []
    
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{|a|a.doctor == self}
  end

  def new_appointment(name, date)
    Appointment.new(name, date, self)
  end

  def patients
    appointments.map{|a|a.name}
  end
end