import 'package:flutter/material.dart';
import 'package:fue/fue.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fue Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: (new MyHomePage()).widget,
    );
  }
}

class MyHomePage extends Fue {
  @override
  get data => {
        "count": 0,
        "update": () => $data.count++,
        "mainAxisAlignment": MainAxisAlignment.center
      };

  @override
  String get template => '''
  <Scaffold>
    <AppBar v-name="appBar">
      <Text v-name="title">Fue Demo!!</Text>
    </AppBar>
    <Center v-name="body">
      <Column v-args="{mainAxisAlignment : mainAxisAlignment}">
        <Text>You have pushed the button this many times:</Text>
        <Text class="counter">{{count}}</Text>
      </Column>
    </Center>
    <FloatingActionButton v-name="floatingActionButton" v-args="{onPressed:update, child:Icons.add}" />
  </Scaffold>
  ''';

  @override
  get style => '''
    .counter{
      color:red;
      font:bold 30px;
    }
  ''';
}
