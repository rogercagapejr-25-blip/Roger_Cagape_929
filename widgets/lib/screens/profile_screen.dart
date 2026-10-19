import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Layout measurements (logical pixels).
  static const double _coverHeight = 230;
  static const double _cardTop = 182; // where the white card starts
  static const double _avatarTop = 79;
  static const double _avatarRadius = 68;

  static const Color _blue = Color(0xFF1B6EF3);
  static const Color _lightBlue = Color(0xFFE7F0FF);
  static const Color _greyButton = Color(0xFFE4E6EB);

  int _selectedTab = 0;
  final List<String> _tabs = const ['All', 'Photos', 'Reels'];

  static const String _coverUrl = '';
  static const String _avatarUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Cover photo
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: _coverHeight,
              child: Image.network(
                _coverUrl,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    Container(color: const Color(0xFF1C2833)),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: _cardTop),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: _avatarTop + _avatarRadius * 2 - _cardTop + 14),
                  _buildNameRow(),
                  const SizedBox(height: 4),
                  const Text(
                    '3 posts',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 14),
                  _buildLocationRow(),
                  const SizedBox(height: 16),
                  _buildActionButtons(),
                  const SizedBox(height: 18),
                  _buildLockedNotice(),
                  const SizedBox(height: 16),
                  _buildTabs(),
                  const SizedBox(height: 22),
                  _buildPersonalDetails(),
                  const SizedBox(height: 28),
                ],
              ),
            ),

            // Camera icon on the cover photo
            Positioned(
              right: 14,
              top: 150,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(Icons.camera_alt, size: 22, color: Colors.black),
              ),
            ),

            // Profile picture
            Positioned(
              top: _avatarTop,
              left: 0,
              right: 0,
              child: Center(child: _buildAvatar()),
            ),

            // Top action icons
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(Icons.menu, color: Colors.white, size: 30),
                      const Spacer(),
                      const Icon(Icons.edit_outlined, color: Colors.white, size: 26),
                      const SizedBox(width: 18),
                      const Icon(Icons.search, color: Colors.white, size: 28),
                      const SizedBox(width: 18),
                      Container(
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Icon(Icons.more_horiz, color: Colors.white, size: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return SizedBox(
      width: _avatarRadius * 2 + 8,
      height: _avatarRadius * 2 + 8,
      child: Stack(
        children: [
          CircleAvatar(
            radius: _avatarRadius + 4,
            backgroundColor: const Color(0xFFEDEFF2),
            child: CircleAvatar(
              radius: _avatarRadius,
              backgroundColor: const Color(0xFFD9DDE3),
              backgroundImage: const NetworkImage(_avatarUrl),
            ),
          ),
          Positioned(
            right: 8,
            bottom: 8,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: _greyButton,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: const Icon(Icons.camera_alt, size: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNameRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Text(
            'AreJay',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Positioned(
            right: 0,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: _greyButton,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.keyboard_arrow_down, size: 24),
                ),
                Positioned(
                  right: -1,
                  top: -1,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.location_on, size: 20, color: Colors.black),
        SizedBox(width: 6),
        Text('Iloilo City', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_circle_outline, size: 20),
              label: const Text(
                'Add to story',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: _blue,
                foregroundColor: Colors.white,
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit, size: 20),
              label: const Text(
                'Edit profile',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: _greyButton,
                foregroundColor: Colors.black,
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLockedNotice() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: const BoxDecoration(
              color: _greyButton,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.shield, size: 22, color: Colors.black),
          ),
          const SizedBox(width: 14),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You locked your profile',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 2),
                Text(
                  'Learn more',
                  style: TextStyle(fontSize: 16, color: _blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: List.generate(_tabs.length, (i) {
          final selected = i == _selectedTab;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () => setState(() => _selectedTab = i),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: selected ? _lightBlue : Colors.transparent,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Text(
                  _tabs[i],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: selected ? _blue : Colors.black,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  // ---------- Personal details ----------
  Widget _buildPersonalDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Personal details',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Icon(Icons.edit_outlined, color: Colors.black54, size: 24),
            ],
          ),
          const SizedBox(height: 12),
          _detailRow(Icons.location_on_outlined, 'Iloilo City, Philippines'),
          _detailRow(Icons.home_outlined, 'Pavia, Iloilo'),
          _detailRow(Icons.cake_outlined, 'January 15, 2000'),
        ],
      ),
    );
  }

  Widget _detailRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11),
      child: Row(
        children: [
          Icon(icon, size: 28, color: Colors.black),
          const SizedBox(width: 22),
          Expanded(
            child: Text(text, style: const TextStyle(fontSize: 17)),
          ),
        ],
      ),
    );
  }
}
