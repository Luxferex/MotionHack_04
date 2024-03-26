import 'package:flutter/material.dart';

class BeliButton extends StatelessWidget {
  const BeliButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 25.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Color(0xFF12372A),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(width: 10),
              Text(
                "Beli sekarang",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
