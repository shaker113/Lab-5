import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapp/screens/appscreen/cpuAndgpuTab.dart';
import 'package:myapp/screens/appscreen/socialTab.dart';
import 'global.dart' as globals;

class appscreen extends StatefulWidget {
  const appscreen({super.key});

  @override
  State<appscreen> createState() => _appscreenState();
}

class _appscreenState extends State<appscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Image(
            image: AssetImage("images/2.png"),
            width: 150,
            height: 90,
          ),
          actions: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Ionicons.cart,
                color: Colors.black,
              ),
              label: Text(
                "cart (${globals.c1})",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 123, 112, 232),
          bottom: TabBar(
            tabs: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Ionicons.hardware_chip_outline,
                  color: Colors.black,
                ),
                label: Text(
                  "CPU",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Image(
                  image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/100/100310.png"),
                  width: 40,
                  height: 35,
                ),
                label: Text(
                  "GPU",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Ionicons.share_social,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            cpuAndgpuTab(
              image: [
                "https://m.media-amazon.com/images/I/61DYLoyNRWL._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/61vGQNUEsGL._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/616VM20+AzL._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/41jGx-EgaJL._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/51yfHYcZ7lL._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/51S2a+GyxUS._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/61oiLbWvC-L._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/51p5BjKPc1L._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/51gEF5jd3TL._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/71S31CWSs3L._AC_UY218_.jpg"
              ],
              name: [
                "AMD Ryzen 7 5800X 8-core, 16-Thread",
                "AMD Ryzen 5 5600X 6-core, 12-Thread",
                "AMD Ryzen 9 5900X 12-core, 24-Thread",
                "Intel Core i9-11900K Desktop Processor 8 Cores up to 5.3 GHz",
                "Intel Core i7-12700KF Desktop Processor 12",
                "Intel CPU BX8070110100F Core i3-10100F / 3.6GHz",
                "Intel Core i9 (12th Gen) i9-12900KS Hexadeca-core (16 Core) 2.50 GHz",
                "AMD Ryzen 7 5700G 8-Core, 16-Thread",
                "Intel Core i5-12600K Desktop Processor 10 (6P+4E) Cores up to 4.9 GHz",
                "AMD Ryzen 9 3900X 12-core, 24-thread"
              ],
              price: [
                "250 JOD",
                "200 JOD",
                "370 JOD",
                "310 JOD",
                "377 JOD",
                "80 JOD",
                "730 JOD",
                "254 JOD",
                "280 JOD",
                "400 JOD"
              ],
            ),
            //tab1
            cpuAndgpuTab(
              image: [
                "https://img.computerunivers.net/images/400x400/90834099C9B644AE680243739705B7AF.jpg",
                "https://m.media-amazon.com/images/I/71pohQNxsyL._AC_UY218_.jpg",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5yLhrl5GOJB4w625hSD_NAfbRgPjKYVhzo_QOWqHUZeNbbAMexblXpfVG5WyBs1VaP3Q&usqp=CAU",
                "https://m.media-amazon.com/images/I/61AIyws526S._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/71e4SKbcvVS._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/71PyN--4a6L._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/91wSunpXgpL._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/717vMEwTPvL._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/41L-ObItt3L._AC_UY218_.jpg",
                "https://m.media-amazon.com/images/I/61hNPkbNvWL._AC_UY218_.jpg"
              ],
              name: [
                "MSI GeForce RTX 3060 Ti GAMING X 8G LHR 8GB",
                "EVGA GeForce GTX 1070 Ti SC GAMING ACX 3.0 Black Edition, 8GB ",
                "MSI Gaming GeForce RTX 3060 Ti LHR 8GB",
                "PNY GeForce RTX™ 3070 Ti 8GB XLR8 Gaming",
                "MSI Gaming GeForce RTX 3070 Ti 8GB GDRR6X",
                "GIGABYTE GeForce GTX 1660 Ti OC 6G ",
                "Gigabyte Geforce GTX 1050 Ti 4GB GDDR5",
                "EVGA GeForce GTX 1070 SC GAMING ACX 3.0 Black Edition, 8GB GDDR5",
                "NVIDIA Quadro RTX 6000",
                "PNY GeForce GTX 1650 4GB GDDR6"
              ],
              price: [
                "400 JOD",
                "300 JOD",
                "500 JOD",
                "600 JOD",
                "700 JOD",
                "320 JOD",
                "220 JOD",
                "350 JOD",
                "3,800 JOD",
                "300 JOD"
              ],
            ), //tab2
            Column(
              children: [
                urlClass(
                    websiteName: "Facebook",
                    websiteSubtitle: "Folow us on facebook",
                    websiteIcon: Ionicons.logo_facebook,
                    myFunction: facebookFunction),
                urlClass(
                    websiteName: "Instagram",
                    websiteSubtitle: "Folow us on instagram",
                    websiteIcon: Ionicons.logo_instagram,
                    myFunction: instagramFunction),
                urlClass(
                    websiteName: "our Wibsite",
                    websiteSubtitle: "",
                    websiteIcon: Ionicons.globe_outline,
                    myFunction: websiteFunction),
                Divider(
                  height: 300,
                  color: Colors.transparent,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(
                      () {
                        Navigator.popUntil(context,
                            ModalRoute.withName(Navigator.defaultRouteName));
                      },
                    );
                  },
                  icon: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  label: Text(
                    "logout",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 123, 112, 232),
                      fixedSize: Size(220, 30)),
                )
              ],
            ), //tab3
          ],
        ),
      ),
    );
  }
}
