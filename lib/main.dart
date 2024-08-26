import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable UI',
      theme: ThemeData(
        brightness: Brightness.dark, // Use dark theme
      ),
      home: GPayHomePage(),
    );
  }
}

class GPayHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
          height: 250,
        decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://static1.anpoimages.com/wordpress/wp-content/uploads/2020/12/15/Google-Pay-GPay-dark-mode4.jpg'),
        fit: BoxFit.cover,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0,left: 35),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Pay by name or phone number",
                filled: true,
                fillColor: Colors.grey[850],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        // SizedBox(width: 8),
        SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://via.placeholder.com/150'), // Replace with your profile image
          ),
        ),
                ],
              ), /* add child content here */
            ),
            SizedBox(height: 16),
            // Quick Actions Grid
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                buildQuickAction(Icons.qr_code_scanner, "Scan any QR",second: "code"),
                buildQuickAction(Icons.person, "Pay contacts"),
                buildQuickAction(Icons.phone_android, "Pay phone",second: "number"),
                buildQuickAction(Icons.account_balance, "Bank transfer"),
                buildQuickAction(Icons.payments, "Pay UPI ID or",second: "number"),
                buildQuickAction(Icons.send, "Self transfer"),
                buildQuickAction(Icons.receipt, "Pay bills"),
                buildQuickAction(Icons.mobile_friendly, "Mobile recharge"),
              ],
            ),
            SizedBox(height: 16),
            // Activate UPI ID Lite and UPI ID Section
            ListTile(
              leading: Icon(Icons.flash_on),
              title: Text("Activate UPI Lite"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text("UPI ID: vanshbansal466..."),
              trailing: Icon(Icons.more_vert),
              onTap: () {},
            ),
            SizedBox(height: 16),
            // People Section
            buildSectionTitle("People"),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildPersonAvatar('Tarashdeep'),
                  SizedBox(width: 10,),
                  buildPersonAvatar('Pulkit'),
                  SizedBox(width: 10,),
                  buildPersonAvatar('HIMANSHU'),
                  SizedBox(width: 10,),
                  buildPersonAvatar('Kanishk'),
                  SizedBox(width: 10,),
                  buildPersonAvatar('Rohan'),
                  SizedBox(width: 10,),
                  buildPersonAvatar('Amit'),
                  Icon(Icons.more_horiz, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Businesses Section
            buildSectionTitle("Businesses"),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildBusinessAvatar('ICCLGroww'),
                  SizedBox(width: 10,),
                  buildBusinessAvatar('Simpl'),
                  buildBusinessAvatar('Kotak Mahindra'),
                  Icon(Icons.more_horiz, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Bills & Recharges Section
            buildSectionTitle("Bills & recharges"),
            SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                buildQuickAction(Icons.smartphone, "Mobile recharge"),
                buildQuickAction(Icons.tv, "DTH / Cable TV"),
                buildQuickAction(Icons.electrical_services, "Electricity"),
                buildQuickAction(Icons.local_shipping, "FASTag recharge"),
              ],
            ),
            SizedBox(height: 16),
            // Offers & Rewards Section
            buildSectionTitle("Offers & rewards"),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildPromotionIcon('Rewards', Icons.emoji_events),
                buildPromotionIcon('Offers', Icons.local_offer),
                buildPromotionIcon('Referrals', Icons.card_giftcard),
              ],
            ),
            SizedBox(height: 16),
            // Manage Your Money Section
            buildSectionTitle("Manage your money"),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.score, color: Colors.blue),
              title: Text("Check your CIBIL score for free"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.blue),
              title: Text("See transaction history"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_balance, color: Colors.blue),
              title: Text("Check bank balance"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            SizedBox(height: 16),
            // Invite Friends Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Invite friends to get ₹201",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Invite friends to Google Pay and get ₹201 when your friend sends their first payment. They get ₹21!",
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        "Copy your code 1e4j64e",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Invite"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32), // Add some spacing at the bottom
          ],
        ),
      ),
    );
  }

  Widget buildQuickAction(IconData icon, String label,{String? second}) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.lightBlue, size: 30),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
        Text(second??"", style: TextStyle(fontSize: 12))
      ],
    );
  }

  Widget buildPersonAvatar(String name) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage('https://via.placeholder.com/100'),
        ),
        SizedBox(height: 4),
        Text(name, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget buildBusinessAvatar(String name) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue,
          child: Text(name[0]),
        ),
        SizedBox(height: 4),
        Text(name, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget buildPromotionIcon(String label, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.yellow[700],
          child: Icon(icon, color: Colors.white, size: 30),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
