import '/imports.dart';

class GenreTiles extends StatefulWidget {
  const GenreTiles({
    Key? key,
    required this.length,
  }) : super(key: key);
  final int length;

  @override
  State<GenreTiles> createState() => _GenreTilesState();
}

class _GenreTilesState extends State<GenreTiles> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(
        top: 13,
        right: 13,
        left: 13,
        // bottom: 20,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9,
        mainAxisExtent: 150,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: widget.length,
      itemBuilder: ((context, index) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.mainText.withOpacity(.7),
                blurRadius: 10.0,
              ),
            ],
            borderRadius: roundedAll,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return GenreDetailsPage(index: index);
                  },
                ),
              );
            },
            child: GridTile(
              footer: Container(
                decoration: BoxDecoration(
                  borderRadius: roundedBottom,
                  color: const Color.fromARGB(200, 0, 45, 68),
                ),
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Center(
                    child: Text(
                  genres[index],
                  style: const TextStyle(color: AppColors.mainText, fontSize: 18),
                )),
              ),
              child: ClipRRect(
                borderRadius: roundedAll,
                child: Image.asset(
                  index == 7 ? 'images/genres/Hip.png' : 'images/genres/${genres[index]}.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
