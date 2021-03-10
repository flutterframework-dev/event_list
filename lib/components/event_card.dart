import 'package:flutter/material.dart';
import 'package:event_list/config/light_theme.dart' as palette;

class EventCard extends StatelessWidget {
  const EventCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
      decoration: BoxDecoration(
        color: palette.primary,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 8.0,
            spreadRadius: 4.0,
            offset: Offset(3.0, 3.0),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Medical App Design.',
                  style: TextStyle(
                    color: palette.heading,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: palette.background,
                backgroundImage: NetworkImage(
                    'https://miro.medium.com/max/2048/0*0fClPmIScV5pTLoE.jpg'),
              )
            ],
          ),
          SizedBox(height: 5.0),
          Text(
            'Hello Everyone.',
            style: TextStyle(color: palette.text),
          ),
          SizedBox(height: 5.0),
          Text(
            'Medical app is face to face call to doctor but this is a',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: palette.text),
            maxLines: 1,
          ),
          SizedBox(height: 15.0),
          Row(
            children: [
              Icon(
                Icons.place,
                color: palette.text,
                size: 18,
              ),
              SizedBox(width: 5.0),
              Text(
                'Software Technology Park 1, Islamabad',
                style: TextStyle(color: palette.text),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: palette.text,
                    size: 15,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    '12 May 2017',
                    style: TextStyle(color: palette.text),
                  ),
                ],
              ),
              SizedBox(width: 20.0),
              Row(
                children: [
                  Icon(
                    Icons.query_builder,
                    color: palette.text,
                    size: 17,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    '12 : 30 PM',
                    style: TextStyle(color: palette.text),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Divider(
            height: 1.0,
            color: palette.separator,
          ),
          SizedBox(height: 5.0),
          EventCardFooter(),
        ],
      ),
    );
  }
}

class EventCardFooter extends StatelessWidget {
  const EventCardFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: FlatButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: palette.success,
                    size: 15,
                  ),
                  SizedBox(width: 2.0),
                  Text(
                    'Join',
                    style: TextStyle(
                        color: palette.success, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5.0, right: 5.0),
          color: palette.separator,
          width: 1,
          height: 30,
        ),
        Expanded(
          child: SizedBox(
            height: 40,
            child: FlatButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove,
                    color: palette.danger,
                    size: 17,
                  ),
                  SizedBox(width: 2.0),
                  Text(
                    'Not Interested',
                    style: TextStyle(
                        color: palette.danger, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
