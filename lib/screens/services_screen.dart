import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  final heroTag;
  final serviceNameId;
  final servicePrice;

  ServicesScreen({this.heroTag, this.serviceNameId, this.servicePrice});
  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  int counter = 1;
  var cost;
  var selectedCard= 'Ampesi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          widget.serviceNameId,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: (){},
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 75.0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        topRight: Radius.circular(45.0),
                      ),
                      color: Colors.white
                  ),
                  height: MediaQuery.of(context).size.height - 100.0,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: 30.0,
                left: 100.0,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.heroTag),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 200.0,
                    width: 200.0,
                  ),
                ),
              ),

              //SECOND POSITION BOX CONTAINER FOR name of service, price and quantity column
              Positioned(
                top: 285.0,
                left: 25,
                right: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //NAME OF SERVICE
                    Text(widget.serviceNameId,
                      style: TextStyle(
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    //PRICE AND ADD AND SUBTRUCT QUANTITY ROW
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //SERVICE PRICE
                        Text(widget.servicePrice,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        //CONTAINER ACTING AS A DIVIDER
                        Container(
                          height: 25.0,
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        Container(
                          height: 25.0,
                          //WIDTH OF THE CONTAINER WITH THE QUANTITY REGULATOR
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Colors.blueAccent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              //THIS IS FOR THE '''-''' SIGN
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    if(counter > 1){
                                      counter = counter - 1;
                                    }else{
                                      counter = 1;
                                    }
                                  });
                                  if(counter > 1){
                                    counter = counter - 1;
                                  }else{
                                    counter = 1;
                                  }
                                },
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: Colors.blue,
                                  ),
                                  child: Center(
                                    child: Icon(Icons.remove,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                              //THE VARIABLE QUANTITY
                              Text('$counter',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                              //THIS IS FOR THE '''+''' SIGN
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    if(counter >= 1){
                                      counter = counter + 1;
                                    }
                                  });
                                  print('taped');
                                },
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: Colors.blue,
                                  ),
                                  child: Center(
                                    child: Icon(Icons.add,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.0),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        border:Border.all(color: Colors.white70),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildinfomationcard('fufu1', 'FUfu', '30','images/fufu1.jpg'),
                          SizedBox(width: 10.0),
                          _buildinfomationcard('fufu', 'Fufu', '30','images/fufu.jpg'),
                          SizedBox(width: 10.0),
                          _buildinfomationcard('fante kenkey', 'Banku', '30','images/fante kenkey.jpg'),
                          SizedBox(width: 10.0),
                          _buildinfomationcard('banku egg', 'Banku', '30','images/banku.jpg'),
                          SizedBox(width: 10.0),
                          //main selected dialog
                          _buildinfomationcard('Ampesi', 'Ampesi and Egg', '30','images/ampesi egg.jpg'),
                          SizedBox(width: 10.0),
                          _buildinfomationcard('banku tilapia', 'Ampesi and Egg', '30','images/banku and tilapia.jpg'),
                          SizedBox(width: 10.0),
                          _buildinfomationcard('banku with okro', 'Ampesi and Egg', '30','images/banku with okro.jpg'),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0)),
                          color: Colors.blueGrey,
                        ),
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'OTHER DISHES',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  Widget _buildinfomationcard(String cardTitle, String info, String unit, String imgUrl){
    return InkWell(
      onTap: (){
        selectCard(cardTitle);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardTitle==selectedCard ? Colors.blueAccent: Colors.white,
          border: Border.all(
              color: cardTitle==selectedCard ? Colors.transparent : Colors.grey.withOpacity(0.3),
              style: BorderStyle.solid,
              width: 0.75
          ),
        ),
        height:100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(info,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: cardTitle == selectedCard
                    ? Colors.white
                    :Colors.black,
              ),
            ),
            Container(
              height: 80.0,
              width: 93.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Image(image: AssetImage(imgUrl),fit: BoxFit.cover,),
            ),
            Text(unit,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: cardTitle == selectedCard
                    ? Colors.white
                    :Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
  selectCard(cardTitle){
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
