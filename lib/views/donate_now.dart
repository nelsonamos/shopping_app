/*
import 'package:cloud_firestore/cloud_firestore.dart';
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/views/payment.dart';
///import 'package:firebase_database/firebase_database.dart';

class AddContacts extends StatefulWidget {
  final String title;
  AddContacts(this.title);

  @override
  _AddContactsState createState() => _AddContactsState();

}

class _AddContactsState extends State<AddContacts> {

  TextEditingController firstNameController, lastNameController,emailController,phoneController;

///  DatabaseReference _ref;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
   /// _ref = FirebaseDatabase.instance.reference().child('users');
  }


  /*Widget _buildContactType(String title){

    return InkWell(

      child: Container(
        height: 40,
        width: 90,


        child: Center(child: Text(title, style: TextStyle(fontSize: 18,
            color: Colors.white),
        ),),),

    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Save Contact'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: firstNameController,
              decoration: InputDecoration(
                hintText: 'Enter your first name',
                prefixIcon: Icon(
                  Icons.account_circle,
                  size: 30,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: lastNameController,
              decoration: InputDecoration(
                hintText: 'Enter your last name',
                prefixIcon: Icon(
                  Icons.phone_iphone,
                  size: 30,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Enter your email address',
                prefixIcon: Icon(
                  Icons.phone_iphone,
                  size: 30,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
                prefixIcon: Icon(
                  Icons.phone_iphone,
                  size: 30,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: RaisedButton(child: Text('Save Contact',style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,

              ),),
                onPressed: (){
                  saveContact();
                },

                color: Theme.of(context).primaryColor,
              ),
            )

          ],
        ),
      ),
    );
  }
  void saveContact(){

    String fname = firstNameController.text;
    String lname = lastNameController.text;
    String email = emailController.text;
    String phone = phoneController.text;

    Map<String,String> contact = {
      'fname':fname,
      'lname':lname,
      'email':email,
      'phone': '+234' + phone,
    };

 ///   _ref.push().set(contact).then((value) {
      Navigator.pop(context);

    }
    ///);


  }
///}
