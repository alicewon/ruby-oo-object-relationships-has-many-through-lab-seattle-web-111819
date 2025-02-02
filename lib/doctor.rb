class Doctor

    attr_accessor :name
    @@all =[]

    def initialize(name)
      @name = name
      @@all << self
    end

    
    def self.all
      @@all
    end

    def appointments
      Appointment.all.select {|apt| apt.doctor == self}
    end

    def new_appointment( patient, date_given)
     Appointment.new(patient, self, date_given)
    end

    def patients
      appointments.map {|apt|apt.patient}
    end
end