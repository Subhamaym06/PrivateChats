import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:private_chats/data/notifiers.dart';
import 'package:private_chats/widgets/footer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  Widget _buildContactRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 20),
        SizedBox(width: 10),
        Expanded(child: Text('$label: $value', style: TextStyle(fontSize: 15))),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        // leading will be auto back button
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/logo/logo.svg', height: 30),
            ),
            Text(
              'PrivateChats',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
        actions: [
          IconButton(
            tooltip: 'Toggle theme',
            icon: ValueListenableBuilder(
              valueListenable: isLightModeNotifier,
              builder: (context, isLightMode, child) {
                return Icon(isLightMode ? Icons.dark_mode : Icons.light_mode);
              },
            ),
            onPressed: () {
              isLightModeNotifier.value = !isLightModeNotifier.value;
            },
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'About the Developer',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                    decorationStyle: TextDecorationStyle.double,
                  ),
                ),
              ),
            ),

            // Tagline
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text(
                'Just a curious mind, learning to code and create',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 8),

            // Profile Card
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/photo.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subhamay Majumder',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Passionate Programmer | Tech Enthusiast | Turning ideas into reality',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Brief Introduction Card
            Card(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Brief Introduction',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'I\'m currently pursuing a B.Sc. (Honours) in Computer Science from University of Calcutta. I love building things with code, solving problems, and learning new technologies every day — whether it\'s a clean UI, a small tool, or a full app.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),

            // Connect with me Card
            Card(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '🔗 Connect with me',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildContactRow(
                      Icons.email,
                      'Email',
                      'subhamaym06@gmail.com',
                    ),
                    SizedBox(height: 8),
                    _buildContactRow(
                      Icons.code,
                      'GitHub',
                      'github.com/Subhamaym06',
                    ),
                    SizedBox(height: 8),
                    _buildContactRow(
                      Icons.work,
                      'LinkedIn',
                      'linkedin.com/in/subhamaym06',
                    ),
                  ],
                ),
              ),
            ),

            // Skills Card
            SizedBox(
              width: double.infinity,
              child: Card(
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '🧠 Skills',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),

                      // Programming Languages
                      Text(
                        '👨‍💻 Programming Languages',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          'C',
                          'Python',
                          'Dart',
                          'JavaScript',
                        ].map((skill) => Chip(label: Text(skill))).toList(),
                      ),
                      SizedBox(height: 16),

                      // Web Development
                      Text(
                        '🌐 Web Development',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          'HTML5',
                          'CSS3',
                        ].map((skill) => Chip(label: Text(skill))).toList(),
                      ),
                      SizedBox(height: 16),

                      // Frameworks & UI Libraries
                      Text(
                        '🧩 Frameworks & UI Libraries',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          'Flutter',
                          'Bootstrap',
                          'Tailwind CSS',
                        ].map((skill) => Chip(label: Text(skill))).toList(),
                      ),
                      SizedBox(height: 16),

                      // Tools & Version Control
                      Text(
                        '🔧 Tools & Version Control',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          'Git',
                          'GitHub',
                        ].map((skill) => Chip(label: Text(skill))).toList(),
                      ),
                      SizedBox(height: 16),

                      // Hardware / IoT
                      Text(
                        '🤖 Hardware / IoT',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          'Arduino',
                        ].map((skill) => Chip(label: Text(skill))).toList(),
                      ),
                      SizedBox(height: 16),

                      // Design & Prototyping
                      Text(
                        '🎨 Design & Prototyping',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          'Figma',
                          'Canva',
                        ].map((skill) => Chip(label: Text(skill))).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
