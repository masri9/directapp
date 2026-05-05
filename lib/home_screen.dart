import 'package:flutter/material.dart';
// سنضيف استدعاءات الصفحات الأخرى هنا لاحقاً

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. الخلفية الكاملة
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://plain-eeur-prod-public.komododecks.com/202604/19/FtJXvAZvXREKew6PJ3ew/image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // 2. المحتوى
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                // العنوان كما في الصورة
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Where do you",
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFF1A1A1A)),
                      ),
                      Text(
                        "wanna go?",
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFFE65100)), // برتقالي داكن
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // شريط البحث (Search Bar)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xFFE65100), width: 1.5),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Ask Sidar anything...",
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // شبكة الأيقونات (الـ 4 كروت البيضاء)
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      _buildMenuCard(context, "Trip Details", Icons.article_outlined),
                      _buildMenuCard(context, "Activities", Icons.architecture_rounded),
                      _buildMenuCard(context, "Restaurants", Icons.restaurant_menu),
                      _buildMenuCard(context, "Series Sites", Icons.movie_creation_outlined),
                    ],
                  ),
                ),
                
                // شريط التنقل السفلي (Bottom Nav) محاكي للصورة
                _buildBottomNav(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ودجت بناء الكرت الأبيض
  Widget _buildMenuCard(BuildContext context, String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 5)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 45, color: const Color(0xFFE65100)),
          const SizedBox(height: 12),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
        ],
      ),
    );
  }

  // ودجت شريط التنقل السفلي
  Widget _buildBottomNav() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: const Color(0xFFE65100), width: 1.5),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home_filled, color: Color(0xFFE65100), size: 30),
          Icon(Icons.location_on_outlined, color: Colors.grey, size: 30),
          Icon(Icons.tv_outlined, color: Colors.grey, size: 30),
          Icon(Icons.person_outline, color: Colors.grey, size: 30),
        ],
      ),
    );
  }
}
