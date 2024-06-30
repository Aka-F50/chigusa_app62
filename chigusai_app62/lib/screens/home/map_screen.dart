import 'package:flutter/material.dart';
import 'package:chigusai_app/widgets/main_drawer.dart';
import '../notification/notification_screen.dart';

class MapScreen extends StatelessWidget {
  static const routeName = "/map-screen";
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("マップ"),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed(NotificationScreen.routeName),
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: const MainDrawer(),
    body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              _tabSection(),
            ];
          },
          body: TabBarView(
            children: [

                SingleChildScrollView(child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text('    全体地図',
                  
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign:TextAlign.left,
                    ),

                    const SizedBox(height: 70),
                  Image.asset('assets/images/map.jpg'),
                  const SizedBox(height: 20),
                  
                 
                  ],),),
               SingleChildScrollView(child: 
              Column(
                children:[
                const SizedBox(height: 20,),
                
                  Image.asset('assets/images/無題62.png'),
                ],
                  ),
               ),
            ],
          ),
        
        ),
      ),
    );
  }
}



//TabBar部分
Widget _tabSection() {
  return const SliverPersistentHeader(
    pinned: true,
    delegate: _StickyTabBarDelegate(
      tabBar: TabBar(
        labelColor: Color.fromARGB(255, 98, 59, 165),
        tabs: [
          Tab(
            text: '全体地図',
          ),
          Tab(
            text: 'フロアマップ',
          )
        ],
      ),
    ),
  );
}

//SliverPersistentHeaderDelegateを継承したTabBarを作る
class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  const _StickyTabBarDelegate({required this.tabBar});

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}



       

     
