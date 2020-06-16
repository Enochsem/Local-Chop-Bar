import 'package:flutter/material.dart';
import 'package:localdishes/screens/services_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      drawer: Drawer(),
      backgroundColor: Colors.amberAccent,
//      appBar: AppBar(
//        title: Text('JB lundry services'),
//        centerTitle: true,
//        elevation: 0.0,
//        actions: <Widget>[
//          Icon(Icons.location_on),
//          SizedBox(width: 10.0,),
//        ],
//      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Container(
                  width: 135.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 80.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('CHOP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 2.0,),
                Text(' Bar',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Container(
            height: MediaQuery.of(context).size.height -185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        _buildlundryService('images/ampesi egg.jpg', 'Ampesi with Eggs','GH20'),
                        _buildlundryService('images/ampesi.jpg', 'Ampesi and Eggs','GH20'),
                        _buildlundryService('images/banku.jpg', 'Banku and Moko','GH28'),
                        _buildlundryService('images/banku and tilapia.jpg', 'Banku and Tilapia','GH188'),
                        _buildlundryService('images/banku with okro.jpg', 'Banku and Okro','GH28'),
                        _buildlundryService('images/fufu.jpg', 'Fufu','GH18'),
                        _buildlundryService('images/wachey.jpg', 'Wachey','GH25'),
                        _buildlundryService('images/kenkey.jpg', 'Kenkey','GH15'),
                        _buildlundryService('images/Gobe.jpg', 'Gob3','GH25'),
                        _buildlundryService('images/Gobe and plantain.jpg', 'Gob3 Plantain','GH35'),
                        _buildlundryService('images/gobe and stew.jpg', 'Gob3 and Stew','GH55'),
                        _buildlundryService('images/kenkey 1.jpg', 'Kenkey','GH25'),
                        _buildlundryService('images/fufu1.jpg', 'Fufu','GH35'),
                        _buildlundryService('images/fufu2.jpg', 'Fufu','GH45'),
                        _buildlundryService('images/jolof and plantain.jpg', 'Jolof k3 Plantain','GH54'),
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Icon(Icons.search,color: Colors.black,),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_basket,color: Colors.black,),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Icon(Icons.location_on,color: Colors.black,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildlundryService(String imagePath, String serviceName, var price){
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => ServicesScreen(heroTag: imagePath, serviceNameId: serviceName, servicePrice: price)
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Hero(
                      tag: imagePath,
                      child: Image(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                        height: 120.0,
                        width: 140.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(serviceName,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: IconButton(
                splashColor: Colors.blueAccent,
                icon: Icon(Icons.add),
                color: Colors.black,
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
