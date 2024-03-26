import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 214, 214),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Registration",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              KolomLogin(
                hintText: "Nama",
                isPassword: false,
              ),
              SizedBox(
                height: 32,
              ),
              KolomLogin(
                hintText: "Email",
                isPassword: false,
              ),
              SizedBox(
                height: 32,
              ),
              KolomLogin(
                hintText: "Nomor Telepon",
                isPassword: false,
              ),
              SizedBox(
                height: 32,
              ),
              KolomLogin(
                hintText: "Password",
                suffixIcon: Icon(Icons.remove_red_eye),
                isPassword: true,
              ),
              SizedBox(
                height: 32,
              ),
              KolomLogin(
                hintText: "Konfirmasi Password",
                suffixIcon: Icon(Icons.remove_red_eye),
                isPassword: true,
              ),
              SizedBox(height: 70),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF12372A)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                child: Container(
                  height: 40,
                  width: 320,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Lanjut",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 127,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum punya akun?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      ' Masuk',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF2A7E48),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KolomLogin extends StatefulWidget {
  const KolomLogin({
    Key? key,
    required this.hintText,
    required this.isPassword, // Tambahkan parameter isPassword
    this.suffixIcon,
  }) : super(key: key);

  final String hintText;
  final bool isPassword; // Parameter untuk menandai apakah itu kolom sandi
  final Icon? suffixIcon;

  @override
  _KolomLoginState createState() => _KolomLoginState();
}

class _KolomLoginState extends State<KolomLogin> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(left: 20, right: 25),
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: InputBorder.none,
            suffixIcon:
                widget.isPassword // Cek apakah ini kolom sandi atau bukan
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        child: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      )
                    : widget.suffixIcon,
          ),
          obscureText: widget.isPassword
              ? _isObscure
              : false, // Terapkan obfuscation hanya jika ini adalah kolom sandi
        ),
      ),
    );
  }
}
