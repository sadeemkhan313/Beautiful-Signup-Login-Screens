import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ShowData extends StatefulWidget {
  const ShowData({super.key});

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
        title: Text('Firebase FireStore',style: TextStyle(
        color: Colors.white,
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert,color: Colors.white,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("Courses").snapshots(),
                  builder: (context, snapshot) {
                    if(snapshot.connectionState==ConnectionState.active){
                      if(snapshot.hasData){
                        return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: CircleAvatar(
                                  child: Text("${index+1}"),
                                ),
                                title: Text('${snapshot.data!.docs[index]["Name"]}'),
                                subtitle: Text('${snapshot.data!.docs[index]["Email"]}'),
                              );
                            },);
                      }else if(snapshot.hasError){
                        return Center(child: Text("${snapshot.hasError.toString()}"),);
                      }else{
                        return Center(child: Text("Not Found data"),);
                      }
                    }else{
                      return Center(child: CircularProgressIndicator());
                    }
                  },
              ))
        ],
      ),
    );
  }
}
