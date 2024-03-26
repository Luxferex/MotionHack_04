import 'package:flutter/material.dart';
import 'package:motion_hack_1/pages/alamat/mainAlamat.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DaftarAlamatPage()));
            },
            child: Icon(Icons.location_pin),
          ),
          SizedBox(width: 2),
          RichText(
            text: TextSpan(
              text: 'Dikirim ke ',
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                  text: 'Kos Stevan',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
