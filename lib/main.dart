// main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'common_export.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: kWhiteColor));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.chat_bubble_outline),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kWhiteColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/home.png"), label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset("assets/search.png"), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Image.asset("assets/book.png"), label: 'My Learning'),
          BottomNavigationBarItem(
              icon: Image.asset("assets/heart.png"), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Image.asset("assets/user.png"), label: 'Account'),
        ],
      ),
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0,
        title: const Row(
          children: [
            CustomIcon(iconPath: "assets/profile.png"),
            SizedBox(width: 10),
            Text("Hello, Harsh!", style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: const [
          CustomIcon(iconPath: "assets/bag.png"),
          SizedBox(width: 16),
          CustomIcon(iconPath: "assets/noti.png"),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search bar
                SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search courses or instructors",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 14),
                        child: Image.asset("assets/search.png",
                            height: 10, width: 10),
                      ),
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.06),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                const CustomHeading(
                    title: "Categories", showArrow: true, showButton: true),

                const SizedBox(height: 16),

                // Categories list
                SizedBox(
                  height: 75,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoriesWidget(
                        title: kCategoriesList[index],
                        assetPath: kCategoriesIcons[index],
                        backgroundColor: kCategoriesBackgroundColors[index],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                    itemCount: kCategoriesList.length,
                  ),
                ),

                const SizedBox(height: 24),
                const CustomHeading(
                    title: "Scheduled Courses",
                    showArrow: false,
                    showButton: true),

                const SizedBox(height: 14),
                const ScheduleCourseWidget(
                    title: kBecomeDesignerText, name: "Robin & Jasper"),

                const SizedBox(height: 24),
                const CustomHeading(
                    title: "Popular Courses",
                    showArrow: false,
                    showButton: true),

                const SizedBox(height: 14),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      4,
                      (index) => const Padding(
                        padding: EdgeInsets.only(right: 16),
                        child:
                            PopularCoursesWidget(assetPath: "assets/heart.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
