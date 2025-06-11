import 'package:flutter/material.dart';
import 'catgories_page.dart';


class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  Widget _categoryItem(String title, String imagePath) {
  return Container(
    
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.blue.shade100,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(fontSize: 16)),
      ],
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Search field
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),

        // Title + See All
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Services',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SeeAllPage()),);
                },
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Horizontal ListView
        SizedBox(
          height: 200,
          
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _categoryItem('Logo Design', 'assets/images/logodesign.jpg' ),
              _categoryItem('AI Artists', 'assets/images/aiartist.png'),
              _categoryItem('Graphic Design', 'assets/images/graphicdesign.jpg'),
              _categoryItem('Web Development','assets/images/webdevelopment.jpg'),
            ],
          ),
        ),

        // Banner image
        Padding(
          padding: const EdgeInsets.all(20),
          
          
          child: Image.asset('assets/images/hinhnen1.jpg', fit: BoxFit.cover,
          width: double.maxFinite,
          height: 130,),
        ),
      ],
    );
  }
}
