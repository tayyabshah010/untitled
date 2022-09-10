

  import 'package:cloud_firestore/cloud_firestore.dart';
  import 'package:flutter/material.dart';
  import 'package:firebase_core/firebase_core.dart';

  Future<void> main () async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDxtNr33Y-bklXOlwVdKYRs8QWud0Jz4V4",
          authDomain: "learnclassfirebase.firebaseapp.com",
          databaseURL: "https://learnclassfirebase-default-rtdb.firebaseio.com",
          projectId: "learnclassfirebase",
          storageBucket: "learnclassfirebase.appspot.com",
          messagingSenderId: "471691190391",
          appId: "1:471691190391:web:b64aee07c0c25bbf732672",
          measurementId: "G-05ME4ZC7G7"
      ),
    );
    runApp(MyStartPint());
  }


  class MyStartPint extends StatefulWidget {
    const MyStartPint({Key? key}) : super(key: key);

    @override
    State<MyStartPint> createState() => _MyStartPintState();
  }

  class _MyStartPintState extends State<MyStartPint> {
    final textFieldData = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home:
        Scaffold(
          body: Center(
            child: Column(
              children: [
                TextField(
                  controller: textFieldData,
                ),
                TextButton(onPressed: (){
                  String data = textFieldData.text.toString();

                  var dataInMap = {
                    'id':35,
                    'info':data

                  };

                /*  // ak definde doc add or save
                  FirebaseFirestore.instance.collection('users')
                  .doc('asdsgdfjgdfjgjsdj')
                  .set(dataInMap);*/
                  //new doc k lya save
                  FirebaseFirestore.instance.collection('users')
                      .add(dataInMap);
                /*  //del doc
                  FirebaseFirestore.instance.collection('users')
                  .doc('asdgfhghfdghfd').delete();*/

                }, child:Text('save')),

                FutureBuilder(
                  future: FirebaseFirestore.instance.collection('users').get(),
                  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                    if (snapshot.hasData) {
                      return Column(
                        children: snapshot.data?.docs?.map((doc) {
                          return ListTile(
                            leading: Text('id=> ${doc['id']}'),
                            title: Text('Info=> ${doc['info']}'),
                          );
                        }).toList()?? [],
                      );
                    } else {
                      // or your loading widget here
                      return const CircularProgressIndicator();
                    }

                  },

                ),

              ],
            ),
          ),
        ),
      );
    }




  }
