module AppointmentsHelper
 
    def make_appointment_human_readable(appointment_datetime)
        appointment_datetime.strftime("%B %d, %Y at %H:%M")
    end

end
