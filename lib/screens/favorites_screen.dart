import 'package:flutter/material.dart';

class FavorietsScreen extends StatefulWidget {
  const FavorietsScreen({Key? key}) : super(key: key);

  @override
  State<FavorietsScreen> createState() => _FavorietsScreenState();
}

class _FavorietsScreenState extends State<FavorietsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        title: Text(
          'Favorites',
          style: TextStyle(
              color: Color(0xff474559),
              fontSize: 25,
              fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 18,
              ),
              Container(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 24,
                    childAspectRatio: 132 / 171,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Image(
                                  image: AssetImage('images/bag3.png'),
                                  width: 110),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                'Hand bags',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff474559),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '\$10.00',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff9E9DB0),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xffFF0000),
                            ),
                            left: 40,
                            right: 0,
                            top: 0,
                            bottom: 500,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
