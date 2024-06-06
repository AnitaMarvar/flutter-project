import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:project/components/my_button.dart';
import 'package:project/pages/delivery_progress_page.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState>FormKey=GlobalKey<FormState>();
  String cardNumber='';
  String expiryDate='';
  String cardHolderName='';
  String cvvCode='';
  bool isCvvFocused=false;
  void userTappedPay(){
    if(FormKey.currentState!.validate()){
      //only show dialog if form is valid
      showDialog(
        context: context,
         builder: (context)=>AlertDialog(
          title: Text("Confirm payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Holder Name: $cardHolderName"),
                Text("CVV: $cvvCode"),
              ],
            ),
          ),
          actions: [
              TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: Text("Cancel")
              ),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: 
                  (context)=>DeliveryProgressPage()),
              );},
              child: Text("Yes")
              ),
             
          ],
         )
         );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:  Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
         title: Text("Checkout"),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
        
        
        //flutter pub get flutter_credit_card
          CreditCardWidget(
            cardNumber: cardNumber,
             expiryDate: expiryDate,
              cardHolderName: cardHolderName, 
              cvvCode: cvvCode,
               showBackView: isCvvFocused,
                onCreditCardWidgetChange: (p0){},
                ),
        
                CreditCardForm(
                  cardNumber: cardNumber,
                   expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                     cvvCode: cvvCode, 
                     onCreditCardModelChange: (data){
                      setState(() {
                        cardNumber = data.cardNumber;
                        expiryDate=data.expiryDate;
                        cardHolderName=data.cardHolderName;
                        cvvCode=data.cvvCode;
                      });
        
                     }, 
                     formKey: FormKey
                     ),
                     SizedBox(height: 25,),
                     MyButton(onTap: userTappedPay, text: "Pay now"),
                      SizedBox(height: 25,)
          ],
        ),
      )
    );
  }
}