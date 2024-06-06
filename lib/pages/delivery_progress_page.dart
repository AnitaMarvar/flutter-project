import 'package:flutter/material.dart';
import 'package:project/components/my_receipt.dart';
import 'package:project/models/restaurant.dart';
import 'package:project/services/database/firestore.dart';
import 'package:provider/provider.dart';


class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {

  //get access to db
  FirestoreService db = FirestoreService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //if we get to this page, submit order to firestore db
    String receipt = context.read<Restaurant>().displayCardReceipt();
    db.saveOrderToDatabase(receipt);

  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: SingleChildScrollView(
        child: Column(
         children:[
           MyReceipt()
         ]
        ),
      ),
    );
  }

  //custom Bottom nav bar - message / call delivery driver
 Widget _buildBottomNavBar(BuildContext context){
  return Container(
    height: 100,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.inversePrimary,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      )
    ),
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        //profile pic of driver
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.person),
          ),
        ),
        SizedBox(width: 10,),
      
      
        //driver details
      
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(" Muthuraj ",style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.tertiary,
              fontWeight: FontWeight.bold),
              ),
            Text(" Driver",style: TextStyle(
              fontSize: 15,
              color: Theme.of(context).colorScheme.background,
              ))
      
          ],
        ),
        Spacer(),
        Row(children: [
          //message button
          Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            color: Theme.of(context).colorScheme.inversePrimary,
            onPressed: (){},
            icon: Icon(Icons.message),
          ),
        ),

        SizedBox(width: 10,),



          //call button
          Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            color: Theme.of(context).colorScheme.inversePrimary,
            onPressed: (){},
            icon: Icon(Icons.call),
          ),
        ),

        ],)
      
        
      
        
      ],),
    ),

  );
 }
}