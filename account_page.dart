import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String name = 'Test';
  String phone = '0123456789';
  String birthday = '10-12-1022';
  String skills = 'Flutter, Dart';
  String education = 'Bachelor of IT';
  String certification = 'Google Dev Certificate';

  void showEditDialog(String title, String currentValue, Function(String) onSave) {
    final controller = TextEditingController(text: currentValue);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Edit $title'),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: 'Enter $title'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              onSave(controller.text);
              Navigator.pop(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  Widget sectionWithEdit({
    required String title,
    required Widget content,
    required VoidCallback onEdit,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 8),
                  content,
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: onEdit,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text('Account Info'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green[700],
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40),
                ),
                SizedBox(height: 8),
                Text(
                  'asunakangura',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'member since oct2022',
                  style: TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                sectionWithEdit(
                  title: 'Description',
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: $name'),
                      Text('Phone: $phone'),
                      Text('Birthday: $birthday'),
                    ],
                  ),
                  onEdit: () => showEditDialog('Description', '', (value) {
                    // Optionally allow editing all fields separately later
                  }),
                ),
                sectionWithEdit(
                  title: 'Skills',
                  content: Text(skills),
                  onEdit: () => showEditDialog('Skills', skills, (value) => setState(() => skills = value)),
                ),
                sectionWithEdit(
                  title: 'Education',
                  content: Text(education),
                  onEdit: () => showEditDialog('Education', education, (value) => setState(() => education = value)),
                ),
                sectionWithEdit(
                  title: 'Certification',
                  content: Text(certification),
                  onEdit: () => showEditDialog('Certification', certification, (value) => setState(() => certification = value)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
