import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget buildTextField({
      required String title,
      required TextEditingController controller,
      int maxLines = 100,
    }) =>
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: "Kanit",
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: controller,
              maxLength: maxLines,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                fillColor: Colors.amber,
              ),
              maxLines: 5,
              minLines: 1,
            )
          ],
        );
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/images/left.png",
              height: 35,
              width: 35,
            )),
        iconTheme: IconThemeData(
          color: Colors.black, // <-- SEE HERE
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          'FEEDBACK',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: "Kanit",
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            buildTextField(
              title: "Subject",
              controller: controllerSubject,
            ),
            const SizedBox(height: 16),
            buildTextField(
              title: "Message",
              controller: controllerMessage,
              maxLines: 1000,
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.black,
                  minimumSize: Size.fromHeight(50),
                  textStyle: TextStyle(fontSize: 20),
                ),
                onPressed: () => launchEmail(
                      subject: controllerSubject.text,
                      message: controllerMessage.text,
                    ),
                child: Text("SEND"))
          ],
        ),
      ),
    );
  }

  Future launchEmail({
    String toEmail = "diablosnachos99@gmail.com",
    required String subject,
    required String message,
  }) async {
    // ignore: unused_local_variable
    Uri mail = Uri.parse("mailto:$toEmail?subject=$subject&body=$message");
    if (await launchUrl(mail)) {
      //email app opened
    } else {
      //email app is not opened
    }
    // if (await canLaunchUrl()) {
    //   await launchUrl(Uri);
    // } else {
    //   throw "cannot launch $url";
    // }
  }
}
