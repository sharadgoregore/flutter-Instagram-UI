import 'package:insta/Screens/ChatPage.dart';
import 'package:insta/Screens/Profile_screen.dart';

allRoute(dynamic) {
  return {
    Profile.routeName: (_) => Profile(),
    Chatpage.routename:(_)=>Chatpage(),
  };
}
