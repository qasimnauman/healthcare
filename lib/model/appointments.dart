final List<Appointment> appointments = [
    Appointment("Hania", "Jan 10, 2025", "12:00 pm - 1:00 pm"),
    Appointment("Hania", "Jan 11, 2025", "12:00 pm - 1:00 pm"),
    Appointment("Hania", "Jan 13, 2025", "12:00 pm - 1:00 pm"),
    Appointment("Hania", "Jun 15, 2025", "10:00 pm - 11:00 pm"),
  ];

class Appointment {
  final String patientName;
  final String date;
  final String time;

  Appointment(this.patientName, this.date, this.time);
}