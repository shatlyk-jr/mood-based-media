import '/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    final snackBar = SnackBar(
      content: Text(
        'You need to connect the internet in order to use this app. Please connect the internet!',
        style: amberText(),
        textAlign: TextAlign.center,
      ),
      shape: RoundedRectangleBorder(borderRadius: roundedTop),
      duration: const Duration(seconds: 8),
    );
    Future(() => ScaffoldMessenger.of(context).showSnackBar(snackBar));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.blueGrey,
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const SizedBox(height: 40),
              Text(
                'Mood-based music and movie recommendation system',
                style: amberText(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              RecButton(
                image: 'images/note.svg',
                title: 'Music Recommendation',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const MusicPage();
                  }));
                },
              ),
              RecButton(
                title: 'Movie Recommendation',
                image: 'images/movie.svg',
                size: 26,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const MoviesPage();
                  }));
                },
              ),
              const SizedBox(height: 40),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}

class RecButton extends StatelessWidget {
  const RecButton({Key? key, required this.title, required this.image, this.size = 25, required this.onTap})
      : super(key: key);

  final double size;
  final String title;
  final String image;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: roundedAll),
      ),
      onPressed: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              image,
              // color: AppColors.mainText,
              height: size,
              width: size,
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: amberText(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
