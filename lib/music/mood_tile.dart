import '/imports.dart';

class MoodTile extends StatelessWidget {
  const MoodTile({
    Key? key,
    required this.length,
  }) : super(key: key);
  final int length;

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
      itemCount: length,
      itemBuilder: ((context, index) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: AppColors.blueGrey,
                blurRadius: 20.0,
              ),
            ],
            borderRadius: roundedAll,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return MoodDetailsPage(indx: index);
                  },
                ),
              );
            },
            child: GridTile(
              // header: Text('mood'),
              footer: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 0, 40, 58).withOpacity(.85),
                      const Color.fromARGB(255, 44, 0, 35).withOpacity(.85),
                    ],
                  ),
                  borderRadius: roundedBottom,
                  // color: const Color.fromARGB(199, 255, 115, 0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Center(
                    child: Text(
                  moods[index].toCapitalized(),
                  style: const TextStyle(color: AppColors.mainText, fontSize: 18),
                )),
              ),
              child: ClipRRect(
                borderRadius: roundedAll,
                child: Image.asset(
                  'images/moods/${moods[index]}.png',
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
