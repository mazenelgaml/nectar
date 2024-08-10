import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX if you're using it for navigation

class EnterYourMobile extends StatefulWidget {
  const EnterYourMobile({super.key});

  @override
  _EnterYourMobileState createState() => _EnterYourMobileState();
}

class _EnterYourMobileState extends State<EnterYourMobile> {
  // FocusNode to manage the focus state of the TextFormField
  final FocusNode _focusNode = FocusNode();
  bool _isButtonVisible = false;

  @override
  void initState() {
    super.initState();
    // Add a listener to the FocusNode to update the button visibility
    _focusNode.addListener(() {
      setState(() {
        _isButtonVisible = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose(); // Dispose the FocusNode when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Enter your mobile number",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Mobile Number",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff7C7C7C),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              focusNode: _focusNode, // Attach the FocusNode to the TextFormField
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your mobile number",
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              ),
            ),
            SizedBox(height: 20), // Space between the TextFormField and the button
            if (_isButtonVisible)
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {

                  },
                  child: CircleAvatar(
                    radius: 33.5, // This sets the width and height to 67
                    backgroundColor: Color(0xff53B175),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  )

                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Example next screen (replace with your actual screen)

