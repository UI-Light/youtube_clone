import "package:flutter/material.dart";

class VideoCard extends StatelessWidget {
  const VideoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/raya.png'),
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/raya.png'),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Raya and the last dragon and the extremely horrifying witch from the kingdom of nearfaraway land',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 55.0),
              child: Text(
                'Disney . 500k views . 11 months ago',
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
