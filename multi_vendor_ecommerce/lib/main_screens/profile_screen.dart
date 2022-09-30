import 'package:flutter/material.dart';
import 'package:multi_vendor_ecommerce/customer_screens/customer_orders_screen.dart';
import 'package:multi_vendor_ecommerce/customer_screens/wishlist_screen.dart';
import 'package:multi_vendor_ecommerce/main_screens/cart_screen.dart';
import 'package:multi_vendor_ecommerce/widgets/app_bar_widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [

          Container(
            height: 230,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.brown],
              ),
            ),
          ),

          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 140,
                elevation: 0,
                pinned: true,
                // centerTitle: true,
                backgroundColor: Colors.white,
                flexibleSpace: LayoutBuilder(
                  builder: (context, constrains) {
                    return FlexibleSpaceBar(
                      centerTitle: true,
                      title: AnimatedOpacity(
                        opacity: constrains.biggest.height <= 120 ? 1 : 0,
                        duration: const Duration(milliseconds: 200),
                        child: const Text(
                          'Account',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      background: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.yellow, Colors.brown],
                          ),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(top: 25, left: 30),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('images/inapp/guest.jpg'),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  'guest'.toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>
                                const CartScreen(back: AppBarBackButton()),
                                ));
                              },
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.20,
                                child: const Center(
                                  child: Text(
                                    'Cart',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.yellow,
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=> const CustomerOrdersScreen(),
                                    ));
                              },
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.20,
                                child: const Center(
                                  child: Text(
                                    'Orders',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=> const WishlistScreen(),
                                    ));
                              },
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.20,
                                child: const Center(
                                  child: Text(
                                    'Wishlist',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                   Container(
                     color: Colors.grey.shade300,
                     child: Column(
                       children: [
                         const SizedBox(
                           height: 150,
                           child: Image(image: AssetImage('images/inapp/logo.jpg')),
                         ),
                         const ProfileHeaderLabel(label: '  Account Info.  '),
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: Container(
                             height: 260,
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(16)),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: const [
                                 RepeatedListTile(
                                   title: 'Email Address',
                                   subTitle: 'example@email.com',
                                   icon: Icons.email_rounded,
                                   isSubTitle: true,
                                 ),
                                 YellowDivider(),
                                 RepeatedListTile(
                                   title: 'Phone No.',
                                   subTitle: '+9876543210',
                                   icon: Icons.phone,
                                   isSubTitle: true,
                                 ),
                                 YellowDivider(),
                                 RepeatedListTile(
                                   title: 'Address',
                                   subTitle: '140 - st - New Jersey',
                                   icon: Icons.location_pin,
                                   isSubTitle: true,
                                 ),
                               ],
                             ),
                           ),
                         ),
                         const ProfileHeaderLabel(label: '  Account Settings  '),
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: Container(
                             height: 220,
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(16)),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 RepeatedListTile(
                                   title: 'Edit Profile',
                                   subTitle: '',
                                   icon: Icons.edit,
                                   onPressed: () {},
                                 ),
                                 const YellowDivider(),
                                 RepeatedListTile(
                                   title: 'Change Password',
                                   icon: Icons.lock,
                                   onPressed: () {},
                                 ),
                                 const YellowDivider(),
                                 RepeatedListTile(
                                   title: 'log Out',
                                   icon: Icons.logout,
                                   onPressed: () {
                                     Navigator.pushReplacementNamed(
                                       context,
                                       '/welcome_screen',
                                     );
                                   },
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileHeaderLabel extends StatelessWidget {
  final String label;

  const ProfileHeaderLabel({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(color: Colors.grey, thickness: 1),
          ),
          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(color: Colors.grey, thickness: 1),
          ),
        ],
      ),
    );
  }
}

class RepeatedListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Function()? onPressed;
  final bool isSubTitle;

  const RepeatedListTile({
    Key? key,
    required this.title,
    this.subTitle = '',
    required this.icon,
    this.onPressed,
    this.isSubTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSubTitle
        ? InkWell(
            onTap: onPressed ?? () {},
            child: ListTile(
              leading: Icon(icon),
              title: Text(title),
              subtitle: Text(subTitle),
            ),
          )
        : InkWell(
            onTap: onPressed ?? () {},
            child: ListTile(
              leading: Icon(icon),
              title: Text(title),
            ),
          );
  }
}

class YellowDivider extends StatelessWidget {
  const YellowDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        color: Colors.yellow,
        thickness: 1,
      ),
    );
  }
}
