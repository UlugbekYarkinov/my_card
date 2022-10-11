import 'package:flutter/material.dart';
import 'components/card.dart';

void main() {
  runApp(const Avatar());
}

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade900,
          title: const Center(child: Text('Avatar App')),
        ),
        body: Container(
          color: Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              const Text(
                'Ya.Ulubgek',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontFamily: 'Silkscreen',
                ),
              ),
              const Text(
                'Junior Flutter Developer',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 6.0),
                color: Colors.white,
                child: const SizedBox(
                  height: 1.0,
                  width: 240.0,
                ),
              ),
              const PersonalCard(
                icon: Icons.phone,
                label: '+998993999999',
              ),
              const PersonalCard(
                icon: Icons.alternate_email_outlined,
                label: 'yarkinovulugbek@gmail.com',
              ),
            ],
          ),
        ),
      ),
    );
  }
}