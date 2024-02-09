import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU2PJY2igLq4u_iOFYdvxsVT4ZLjrLkRnIYnzWp4p3Lw&s",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  const Positioned(
                    right: 20,
                    top: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(Icons.favorite_outline),
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text(
                "Flutter ClipRReact",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.favorite_outline),
                  Padding(padding: EdgeInsets.only(left: 10.0)),
                  Text(
                    "ClipRReact Favorite",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              trailing: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(Icons.male),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1521038199265-bc482db0f923?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW1lcmljYW4lMjBnaXJsfGVufDB8fDB8fHww"),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MD Opi",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Learn Flutter ",
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.orange),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Age ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "50 Years Old ",
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: 2,
                    color: Colors.orange,
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Age ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "30 Years Old ",
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
