import 'imports.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MBMMRS',
      theme: ThemeData(
        canvasColor: Colors.transparent,
        primaryIconTheme: const IconThemeData(
          color: AppColors.mainText,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.mainText,
        ),
        fontFamily: 'Varela',
        primarySwatch: Colors.blueGrey,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: AppColors.mainText,
          ),
          shadowColor: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          elevation: 10,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Varela',
            color: AppColors.mainText,
            fontSize: 18,
          ),
        ),
      ),
      home: const HomePage()));
}
