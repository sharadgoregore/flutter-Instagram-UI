

import 'package:insta/Models/User.dart';

class messagedecoration{
  final User sender;
  final String avatar;
  final String time;
  final int unreadmessage;
  final bool readmessage;
  final String text;

messagedecoration({this.sender, this.avatar, this.time, this.unreadmessage, this.readmessage, 
  this.text,
});

}

final List<messagedecoration> chats = [
messagedecoration(sender:pravin,
avatar:'https://m.economictimes.com/thumb/msid-70259600,width-1200,height-900,resizemode-4,imgsize-343027/emojis_gettyimages.jpg'
,time: '02:15 am',
unreadmessage: 15,
text: 'did you call me?'

),
messagedecoration(sender:ajay,
avatar:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRglHeFz5vAiihn3fyE1U0L-iRdoCz5fo5sHQ&usqp=CAU'
,time: '02:15 am',
unreadmessage: 25,
text: 'Hey are you there'

),
messagedecoration(sender:sunil,
avatar:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5mEITjnY33bKQZIV3Ew6e0KSpWbSUNwcaYA&usqp=CAU'
,time: '02:15 am',
unreadmessage: 25,
text: 'Wassup??????'

),


];