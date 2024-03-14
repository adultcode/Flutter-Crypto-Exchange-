import 'dart:convert';

import 'package:crypto_exchange/model/position_model.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' ;
import 'package:socket_io_client/socket_io_client.dart' as IO;

import 'model/order_model.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var _key = "8039|9Y5ZEaRboTjA8hxQpK4JZjkKZMwb7nWG7IIYrKxQ";

  var url = "https://api.wallex.ir";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("hi");
    final SocketManager socketManager = SocketManager();
    socketManager.initializeSocket();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("sjdfh"),
      ),
    );
  }
}




class SocketManager {
  List<OrderModel> pos_list = [];
  static final SocketManager _instance = SocketManager._internal();

  var flag = 0;
  factory SocketManager() {
    return _instance;
  }

  SocketManager._internal();

  IO.Socket? socket;

  void initializeSocket() {
    socket = IO.io('https://api.wallex.ir'
        , <String, dynamic>{
      'transports': ['websocket'],
    }
    );

    socket?.onConnect((_) {
      print('Connected to socket.io');
      socket!.emit('subscribe', {'channel': 'BTCUSDT@sellDepth'});
     // socket!.emit('subscribe', {'channel': 'BTCUSDT@buyDepth'});
    });

    socket!.on('Broadcaster', (data) {
      print("--------broad cast");


      if(data!=null && data[0].toString()=="BTCUSDT@sellDepth"){
        flag=0;
      data[1].forEach((key, value) {
        flag++;
        if(value!=null && flag<10){


        var t = OrderModel.fromJson(value);
        print(t.price);
        print(value);
        print(key);
        print("------------");
        }
      });
      }
    print("recieved");

    });
  }

  void GetSell(List<OrderModel> _list){

  }
}
