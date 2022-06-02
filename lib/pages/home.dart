import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      debugPrint("hello");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(
                        "assets/menu1.svg",
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint("shop");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(
                        "assets/shop1.svg",
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Let\'s find ",
                    style: GoogleFonts.montserrat(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Your Gadget!",
                    style: GoogleFonts.montserrat(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.6))),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search ...",
                                hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey.withOpacity(0.7),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: SvgPicture.asset(
                          "assets/configuration.svg",
                          height: 40,
                          width: 40,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 180,
              child: Center(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _headerScroll(
                        "JBL JR 460NC",
                        "Casque circum-auriculaire sans fil à réduction de bruit",
                        "assets/JBL_LIVE_660NC_Product image_Hero_Blue.png"),
                    _headerScroll(
                        "JBL Quantum 800",
                        "Casque circum-auriculaire sans fil à réduction de bruit",
                        "assets/JBL_Quantum 800_Product Image_ANGLE_White.png"),
                    _headerScroll(
                        "JBL JR 460NC",
                        "Casque circum-auriculaire sans fil à réduction de bruit",
                        "assets/1.JBL_JR460NC_Product Image_Hero_Pink.png"),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Choose Brand",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15)),
                      Text("See All",
                          style: GoogleFonts.montserrat(
                              color: Colors.grey[600], fontSize: 15)),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        _brand("assets/be.svg", "Beats"),
                        _brand("assets/jbl.svg", "JBL"),
                        _brand("assets/hp.svg", "HP"),
                        _brand("assets/apple.svg", "Apple"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8,left: 18,right: 18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Popular",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Discount",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey[500]
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Discount",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey[500]
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height:MediaQuery.of(context).size.height/2 ,
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      children: [
                        _itemShop("JBL_LIVE_660NC", "assets/JBL_LIVE_660NC_Product image_Hero_Blue.png"),
                        _itemShop("JBL_JR460NC", "assets/1.JBL_JR460NC_Product Image_Hero_Pink.png"),
                        _itemShop("JBL_Quantum 800", "assets/JBL_Quantum 800_Product Image_ANGLE_White.png"),
                        _itemShop("JBL_JR460NC", "assets/1.JBL_JR460NC_Product Image_Hero_Pink.png"),
                      ],

                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _itemShop(String itemName,String itemImage){
    return Container(
      //height: MediaQuery.of(context).size.width-40/2,
      decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          Image.asset(
            itemImage,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          Flexible(
            child: Text(
              itemName,
              style: GoogleFonts.montserrat(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _brand(String brand, String brandName) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 98,
      width: 98,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SvgPicture.asset(
              brand,
              height: 60,
              width: 60,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              brandName,
              style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Widget _headerScroll(
      String producName, String producDescription, String image) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
          margin: EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 0),
          height: 150,
          width: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width / 10,
          decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20)),
          child: Container(
            margin: EdgeInsets.only(right: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Text(
                    producName,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Flexible(
                  child: Text(
                    producDescription,
                    maxLines: 2,
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Get Now",
                      style: GoogleFonts.montserrat(
                          fontSize: 19, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: -16,
          right: 10,
          child: Image.asset(
            image,
            height: 175,
            width: 175,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
