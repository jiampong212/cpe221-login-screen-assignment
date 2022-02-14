import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Code',
                style: TextStyle(fontSize: 50),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'Hub',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 400,
                  width: 400,
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Positioned(
                        height: 50,
                        width: 100,
                        top: 200,
                        right: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Join Now'),
                        ),
                      ),
                      const Positioned(
                        height: 50,
                        width: 100,
                        top: 270,
                        right: 50,
                        child: Text(
                          'No credit card required!',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const Positioned(
                        top: 30,
                        child: Text(
                          'Programmers in your area',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                      const Positioned(
                        top: 100,
                        left: 20,
                        child: Image(
                          fit: BoxFit.cover,
                          height: 250,
                          width: 200,
                          image: AssetImage('assets/girl.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
                const Switcher(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Switcher extends StatefulWidget {
  const Switcher({
    Key? key,
  }) : super(key: key);

  @override
  State<Switcher> createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Stack(
          alignment: AlignmentDirectional.center,
          clipBehavior: Clip.none,
          children: [
            const Positioned(
              left: 30,
              right: 30,
              top: 50,
              child: Divider(
                thickness: 3,
              ),
            ),
            Positioned(
              top: 10,
              left: 50,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 20, color: currentIndex == 0 ? Colors.blue : Colors.grey),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 50,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: 20, color: currentIndex == 1 ? Colors.blue : Colors.grey),
                ),
              ),
            ),
            Positioned(
              top: 90,
              right: 20,
              left: 20,
              bottom: 20,
              child: IndexedStack(
                index: currentIndex,
                children: const [
                  Login(),
                  SignUp(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TextField(
          decoration: InputDecoration(hintText: 'Username'),
        ),
        const TextField(
          decoration: InputDecoration(hintText: 'Password'),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Login'),
        ),
      ],
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TextField(
          decoration: InputDecoration(hintText: 'Username'),
        ),
        const TextField(
          decoration: InputDecoration(hintText: 'Email'),
        ),
        const TextField(
          decoration: InputDecoration(hintText: 'Password'),
        ),
        const TextField(
          decoration: InputDecoration(hintText: 'Confirm Password'),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
