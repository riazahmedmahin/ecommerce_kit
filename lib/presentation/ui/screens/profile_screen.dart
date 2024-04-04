import 'package:flutter/material.dart';
 class ProfileScreen extends StatefulWidget {
   const ProfileScreen({super.key});

   @override
   State<ProfileScreen> createState() => _ProfileScreenState();
 }

 class _ProfileScreenState extends State<ProfileScreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       //backgroundColor: Colors.yellowAccent,
       body: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               height: 170,
               decoration: BoxDecoration(
                 color: Colors.redAccent,
                 borderRadius: BorderRadius.only(
                   bottomRight: Radius.circular(100)
                 )
               ),
               //alignment: Alignment.bottomLeft,
               child: Column(
                 children: [
                   SizedBox(height: 50,),
                   ListTile(
                     title: Text("John doe",style: Theme.of(context)
                         .textTheme
                         .titleLarge
                         ?.copyWith(fontSize: 28, color: Colors.black),),
                     subtitle: Text("johndoe@gmail.com",style: TextStyle(fontSize: 22,color: Colors.black),),
                     trailing: CircleAvatar(
                       child: Icon(Icons.person),
                     ),
                   ),
                 ],
               ),
             ),

           ],
         ),
       ),

     );
   }
 }

