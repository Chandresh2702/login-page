import 'package:flutter/material.dart';
// import 'dashboard.dart';
import 'package:exchange/screens/home.dart';
import 'package:exchange/screens/chat.dart';
import 'package:exchange/screens/myadds.dart';
import 'package:exchange/screens/profile.dart';

// void main() {
//   runApp(MaterialApp(
//     initialRoute: '/',
//     routes: {
//       '/home': (context) => Home(),
//     },
//     debugShowCheckedModeBanner: false,
//   ));
// }

void main() {
  runApp(const MaterialApp(
    home: DashBoard(),
    debugShowCheckedModeBanner: false,
  ));
}

class DashBoard extends StatefulWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    Chat(),
    Profile(),
    Myadds(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab ==0 ? Colors.deepPurple : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab ==0 ? Colors.deepPurple : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                
                MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Chat();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currentTab ==1 ? Colors.deepPurple : Colors.grey,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                            color: currentTab ==1 ? Colors.deepPurple : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            // Right tab bar Icons
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Myadds();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: currentTab ==2 ? Colors.deepPurple : Colors.grey,
                        ),
                        Text(
                          'Wishlist',
                          style: TextStyle(
                            color: currentTab ==2 ? Colors.deepPurple : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                
                MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: currentTab ==3 ? Colors.deepPurple : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab ==3 ? Colors.deepPurple : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
    ),
      ),
    );
  }
}
