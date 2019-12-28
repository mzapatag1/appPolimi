import 'package:googleapis/calendar/v3.dart';
import 'package:googleapis_auth/auth_io.dart';
import './sign_in.dart' as sign_in;

//get Service Account Credentials
final accountCredentials = new ServiceAccountCredentials.fromJson({
  "private_key_id": "dadcca725b03b1a3b72f7633f991592c0e2c8e03",
  "private_key": "nutriapp-calendar@nutriapp-2136b.iam.gserviceaccount.com",
  "client_email": sign_in.email,
  "client_id": "nico9406",
  "type": "service_account"
});
var _scopes = [CalendarApi.CalendarScope]; //defines the scopes for the calendar api

void getCalendarEvents() { 
    clientViaServiceAccount(accountCredentials, _scopes).then((client) {
      var calendar = new CalendarApi(client);
      var calEvents = calendar.events.list("nuao9qek9cggc5ng4jd0aieac4@group.calendar.google.com");
      calEvents.then((Events events) {
        events.items.forEach((Event event) {
          print(event.summary);
          print(event.start);
        });
      });
    });
}