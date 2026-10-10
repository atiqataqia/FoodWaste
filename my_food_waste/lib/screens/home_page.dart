import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF6F0), // Soft orange background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Color(0xFF1E2D24)),
          onPressed: () {},
        ),
        title: const Text(
          'WasteCost',
          style: TextStyle(
            color: Color(0xFF1E2D24),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundColor: Color(0xFFC4D3C9),
                  radius: 18,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                SizedBox(width: 4),
                Icon(Icons.keyboard_arrow_down, color: Color(0xFF1E2D24)),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ucapan Pengguna
              Row(
                children: const [
                  Text(
                    'Good morning, Alex!',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E2D24),
                    ),
                  ),
                  SizedBox(width: 6),
                  Text('👋', style: TextStyle(fontSize: 20)),
                ],
              ),
              const SizedBox(height: 4),
              const Text(
                "Here's your waste and financial loss overview.",
                style: TextStyle(fontSize: 13, color: Color(0xFF6B7C73)),
              ),
              const SizedBox(height: 20),

              // KAD 1: Total Financial Loss
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF5A8E68), Color(0xFF487354)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF5A8E68).withOpacity(0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Total Financial Loss',
                          style: TextStyle(color: Colors.white70, fontSize: 13),
                        ),
                        SizedBox(width: 6),
                        Icon(
                          Icons.info_outline,
                          color: Colors.white70,
                          size: 15,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'RM 12,540.75',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(
                                    Icons.north_east,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '18.6% vs last month',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.show_chart_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // KAD 2: Waste Distribution (Static Circular Visual)
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.03),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Waste Distribution',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E2D24),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF2EFE9),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: const [
                              Text(
                                'This Month',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF6B7C73),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 16,
                                color: Color(0xFF6B7C73),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        // Static Pie Chart Visual
                        SizedBox(
                          height: 130,
                          width: 130,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomPaint(
                                size: const Size(130, 130),
                                painter: StaticPieChartPainter(),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.eco,
                                  color: Color(0xFF6B9B7A),
                                  size: 26,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Legend List Statik
                        Expanded(
                          child: Column(
                            children: const [
                              _LegendItem(
                                color: Color(0xFF6B9B7A),
                                label: 'Overproduction',
                                value: '35%',
                              ),
                              _LegendItem(
                                color: Color(0xFF5B9BD5),
                                label: 'Spoilage',
                                value: '25%',
                              ),
                              _LegendItem(
                                color: Color(0xFFF2C94C),
                                label: 'Damaged Items',
                                value: '20%',
                              ),
                              _LegendItem(
                                color: Color(0xFFEB5757),
                                label: 'Returns',
                                value: '12%',
                              ),
                              _LegendItem(
                                color: Color(0xFF9B51E0),
                                label: 'Others',
                                value: '8%',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // KAD 3: Insights Banner
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFEBF3F5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xFF62A8AC),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.lightbulb_outline,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Insights',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF1E2D24),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "You've reduced waste loss by 18.6% compared to last month.",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF556B61),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right, color: Color(0xFF556B61)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      // BOTTOM NAVIGATION BAR (Statik)
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF5A8E68),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: 'Logs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Painter Khas untuk Lukis Carta Statik Tanpa Package Extra
class StaticPieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()..style = PaintingStyle.fill;

    // Overproduction (35%) - Hijau
    paint.color = const Color(0xFF6B9B7A);
    canvas.drawArc(rect, -1.57, 2.2, true, paint);

    // Spoilage (25%) - Biru
    paint.color = const Color(0xFF5B9BD5);
    canvas.drawArc(rect, 0.63, 1.57, true, paint);

    // Damaged Items (20%) - Kuning
    paint.color = const Color(0xFFF2C94C);
    canvas.drawArc(rect, 2.2, 1.25, true, paint);

    // Returns (12%) - Merah
    paint.color = const Color(0xFFEB5757);
    canvas.drawArc(rect, 3.45, 0.75, true, paint);

    // Others (8%) - Ungu
    paint.color = const Color(0xFF9B51E0);
    canvas.drawArc(rect, 4.2, 0.51, true, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final String value;

  const _LegendItem({
    required this.color,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(fontSize: 11, color: Color(0xFF4A5A51)),
              ),
            ],
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1E2D24),
            ),
          ),
        ],
      ),
    );
  }
}
