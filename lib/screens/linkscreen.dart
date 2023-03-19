import 'package:flutter/material.dart';
//import 'package:googleapis/people/v1.dart';
import 'package:url_launcher/url_launcher.dart';

class DynamicEvent extends StatelessWidget {
  //final String youtubeUrl;
  final Url = 'https://www.youtube.com/watch?v=5DfnCD8T3zA';

  const DynamicEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          String url = "https://www.youtube.com/watch?v=5DfnCD8T3zA";
          var urllaunchable = await canLaunchUrl(
              Uri.parse(url)); //canLaunch is from url_launcher package
          if (urllaunchable) {
            await launchUrl(Uri.parse(
                url)); //launch is from url_launcher package to launch URL
          }
        },
        child: Text('Meditation Music'),
      ),
    );
  }
}
