import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sm/provider/ScreenChage.dart';
import 'package:flutter/foundation.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count=0;
  List<String> randomNames = [
    'Emily',
    'Alex',
    'Jasmine',
    'Brandon',
    'Sophia',
    'Marcus',
    'Isabella',
    'Jordan',
    'Olivia',
    'Carter',
  ];
  @override
  Widget build(BuildContext context) {
    final countprovider=Provider.of<ScreenChange>(context,listen: false);
    print("build");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

          centerTitle: true,
          title: Text("Provider State Management")),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Center(
                child: Consumer<ScreenChange>(builder: (context,value,child){
                  return  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: ()  {
                              countprovider.setCount1();
                              print(value.count );
                            },
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: value.count == 1
                                    ? Colors.white
                                    : Colors.green,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Center(
                                child: Text(
                                  "HOME",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 15,
                                    color: value.count == 1 ? Colors.grey : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: ()  {
                              countprovider.setCount2();
                              print(value.count );
                            },
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: value.count == 1
                                    ? Colors.green
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Center(
                                child: Text(
                                  "CHANNELS",
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 15,
                                      color: value.count == 1 ? Colors.black : Colors.grey),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Builder(
                        builder: (context) {
                          if (value.count == 0) {
                            return ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.all(8),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.blue,
                                      backgroundImage: NetworkImage(
                                          'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),
                                    ),
                                    title: Text(randomNames[index]),
                                    subtitle: Text(
                                        'Hey i am Abubakar Asif-Full Stack Flutter App Developer.'),
                                    trailing:
                                    Text('${DateTime.now()}'.substring(0, 10)),
                                    onTap: () {
                                      // Add your onTap logic here
                                    },
                                  ),
                                );
                              },
                            );
                          } else {
                            return Padding(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.all(8),
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            radius: 30,
                                            backgroundImage: NetworkImage(
                                                'https://yt3.googleusercontent.com/3K6h6gpMPf4mK9qh6SXTl0W3PLxnOMzUnFHc2lbS9t-ucS-b4JGcR8nW7ja9XDYkHM-kAnijk2c=s900-c-k-c0x00ffffff-no-rj'),
                                          ),
                                          title:
                                          Text("ICC-International Cricket Council"),
                                          subtitle: Text(
                                              'Hey i am Abubakar Asif-Full Stack Flutter App Developer.'),
                                          onTap: () {
                                            // Add your onTap logic here
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  Text(
                                    "Discover Channels",
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 15,
                                        color: Colors.grey),
                                  ),
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.all(3),
                                        child: ListTile(
                                          leading: CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Colors.blue,
                                              backgroundImage: NetworkImage(
                                                  'https://vectorseek.com/wp-content/uploads/2023/06/Asia-Cup-2023-Logo-Vector.jpg')),
                                          title: Text("ACC-Asian Cricket Council"),
                                          subtitle: Text(
                                              'Hey i am Abubakar Asif-Full Stack Flutter App Developer.'),
                                          trailing: Text('Tap to Join'),
                                          onTap: () {
                                            // Add your onTap logic here
                                          },
                                        ),
                                      );
                                    },
                                  )
                                ],
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  );
                })
            )

          ],
        ),
      ),
    );
  }
}