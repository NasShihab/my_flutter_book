import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  const ApiPage({Key? key}) : super(key: key);

  @override
  State<ApiPage> createState() => _ApiPageState();
}

List<dynamic> users = [];

class _ApiPageState extends State<ApiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API CALL'),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: restAPICall,
        child: const Text(
          'Click to call API',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              final email = user['email'];
              final nameTitle = user['name']['title'];
              final firstName = user['name']['first'];
              final lastName = user['name']['last'];
              final image = user['picture']['thumbnail'];
              return ListTile(
                subtitle: Text(email),
                title: Wrap(
                  spacing: 5,
                  children: [
                    Text(nameTitle.toString()),
                    Text(firstName.toString()),
                    Text(lastName.toString()),
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(image),
                ),
              );
            }),
      ),
    );
  }

  void restAPICall() async {
    //const url = "https://randomuser.me/api/?results=5";
    //final uri = Uri.parse(url);
    final response = await http.get(
      Uri.parse("https://randomuser.me/api/?results=50"),
    );
    // final body = response.body;
    //final json = jsonDecode(response.body);
    setState(() {
      users = jsonDecode(response.body)["results"];
    });
  }
}
