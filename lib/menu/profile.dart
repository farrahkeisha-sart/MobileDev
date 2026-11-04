
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  static const Color biru = Color.fromARGB(255, 138, 174, 206);
  static const Color dark = Color(0xFF44343A);
  static const Color bg = Color(0xFFEAF4FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // HEADER
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: biru,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings_outlined,
                        color: dark,
                      ),
                    ),
                  ],
                ),
              ),

              // PROFILE CARD
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: bg,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: biru,
                      ),
                    ),

                    const SizedBox(width: 15),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Beauty Lover',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: dark,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'beautylover@email.com',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            '✦ Gold Member',
                            style: TextStyle(
                              color: Color(0xFFCE9A44),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // PESANAN SAYA
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Pesanan Saya',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: dark,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: biru,
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: biru,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // STATUS PESANAN
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OrderMenu(
                      icon: Icons.account_balance_wallet_outlined,
                      title: 'Belum Bayar',
                    ),
                    OrderMenu(
                      icon: Icons.inventory_2_outlined,
                      title: 'Dikemas',
                    ),
                    OrderMenu(
                      icon: Icons.local_shipping_outlined,
                      title: 'Dikirim',
                    ),
                    OrderMenu(
                      icon: Icons.check_circle_outline,
                      title: 'Selesai',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // AKUN SAYA
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Akun Saya',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: dark,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // MENU AKUN
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    ProfileMenu(
                      icon: Icons.favorite_border,
                      title: 'Wishlist',
                    ),
                    ProfileMenu(
                      icon: Icons.location_on_outlined,
                      title: 'Alamat Pengiriman',
                    ),
                    ProfileMenu(
                      icon: Icons.confirmation_number_outlined,
                      title: 'Voucher Saya',
                    ),
                    ProfileMenu(
                      icon: Icons.history,
                      title: 'Riwayat Pembelian',
                    ),
                    ProfileMenu(
                      icon: Icons.person_outline,
                      title: 'Edit Profil',
                    ),
                    ProfileMenu(
                      icon: Icons.help_outline,
                      title: 'Bantuan',
                    ),
                    ProfileMenu(
                      icon: Icons.logout,
                      title: 'Logout',
                      isLast: true,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Center(
                child: Text(
                  'BEAUTY STORE',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                    letterSpacing: 2,
                  ),
                ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}

// WIDGET PESANAN
class OrderMenu extends StatelessWidget {
  final IconData icon;
  final String title;

  const OrderMenu({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 27,
          color: ProfilePage.biru,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 10,
            color: ProfilePage.dark,
          ),
        ),
      ],
    );
  }
}

// WIDGET MENU AKUN
class ProfileMenu extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isLast;

  const ProfileMenu({
    super.key,
    required this.icon,
    required this.title,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            icon,
            color: ProfilePage.biru,
            size: 23,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: ProfilePage.dark,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 14,
            color: Colors.grey,
          ),
          onTap: () {},
        ),

        if (!isLast)
          const Divider(
            height: 1,
            color: Color(0xFFEAF1F5),
          ),
      ],
    );
  }
}
