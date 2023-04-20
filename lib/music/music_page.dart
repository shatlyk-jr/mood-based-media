import '/imports.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  bool isCollapsed = true;

  bool isCollapsed2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        title: const Text('Music Recommendation'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: musicTab(),
      ),
    );
  }

  SingleChildScrollView musicTab() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ShowAll(
            title: 'Genres',
            isCollapsed: isCollapsed,
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
          ),
          GenreTiles(
            length: isCollapsed ? 4 : genres.length,
          ),
          const Divider(
            height: 30,
            color: AppColors.mainText,
            thickness: 4,
          ),
          ShowAll(
            title: 'Moods',
            isCollapsed: isCollapsed2,
            onTap: () {
              setState(() {
                isCollapsed2 = !isCollapsed2;
              });
            },
          ),
          MoodTile(length: isCollapsed2 ? 4 : moods.length)
        ],
      ),
    );
  }
}

class ShowAll extends StatelessWidget {
  const ShowAll({
    Key? key,
    required this.isCollapsed,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  final bool isCollapsed;
  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Card(
        margin: const EdgeInsets.all(0),
        color: AppColors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '   $title',
                style: const TextStyle(fontSize: 18, color: AppColors.mainText),
              ),
            ),
            TextButton(
              child: Text(
                isCollapsed ? 'Show all' : 'Show less',
                style: amberText(),
              ),
              onPressed: () => onTap(),
            ),
          ],
        ),
      ),
    );
  }
}
