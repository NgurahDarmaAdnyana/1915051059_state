import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenghitungLuasTrapesium extends StatefulWidget {
  @override
  _MenghitungLuasTrapesiumState createState() => _MenghitungLuasTrapesiumState();
}

class _MenghitungLuasTrapesiumState extends State<MenghitungLuasTrapesium> {
  double alasbawah=0;
  double alasatas=0;
  double tinggi=0;
  double luas=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Menghitung Luas Trapesium", style: TextStyle(color: Colors.white),),
        mainAxisAlignment: MainAxisAlignment.center,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(purple), Color(purpledeep)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
            )
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Masukan Data", style: TextStyle(fontWeight: FontWeight.bold),),
          Row(
            children: [
              Text("Sisi Atas Trapesium"),
              Expanded(
                child: TextField(
                  onChanged: (txt){
                    setState(() {
                      alasatas= double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text("Sisi Bawah Trapesium"),
              Expanded(
                child: TextField(
                  onChanged: (txt){
                    setState(() {
                      alasbawah= double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text("Tinggi Trapesium"),
              Expanded(
                child: TextField(
                  onChanged: (txt){
                    setState(() {
                      tinggi= double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                ),
              )
            ],
          ),
          RaisedButton(
              onPressed: (){
                setState(() {
                  luas=0.5 * (alasatas + alasbawah) * tinggi;
                });
              },
              child: Text("Hitung Trapesium"),

          ),

          Text("Sisi atas=$alasatas, Sisi Bawah=$alasbawah, Tinggi=$tinggi"),
          Text("$luas")
        ],
      ),
    );
  }
}