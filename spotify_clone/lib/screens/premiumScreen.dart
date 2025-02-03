import 'package:flutter/material.dart';

class PremiumScreens extends StatefulWidget {
  const PremiumScreens({super.key});

  @override
  State<PremiumScreens> createState() => _PremiumScreensState();
}

class _PremiumScreensState extends State<PremiumScreens> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initalSize = 240;
  double containerHeight = 300;
  double containerInitalHeight = 300;
  @override
  void initState() {
    setState(() {
      imageSize = initalSize;
    });
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initalSize - scrollController.offset;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerInitalHeight - scrollController.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.center,
                height: containerHeight,
                foregroundDecoration:
                    const BoxDecoration(color: Color.fromARGB(100, 0, 0, 0)),
                child: Image.network(
                  "https://www.spotlistr.com/_next/static/images/example-grid-0b5284e054593c92985bead4380c8581.jpg",
                  height: imageSize,
                  width: imageSize,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 15.0,
                top: 40.0,
                child: Row(
                  children: [
                    Image.network(
                      "https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/spotify-white-icon.png",
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Premium',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'SPOTIFY PREMIUM',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Get more out of your\nmusic with Premium',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(120, 5, 120, 5),
                  child: Text(
                    'GET PREMIUM',
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
                  child: Text(
                    'Terms and Conditions apply.',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Container(
                height: 290.0,
                width: 360.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 36, 35, 35),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15.0, 28.0, 0, 10.0),
                      child: Text('Why join Premium?',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0)),
                    ),
                    const Divider(thickness: 0.1),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.check_sharp,
                              color: Colors.green, size: 30.0),
                          const SizedBox(width: 5),
                          Text('Download to listen offline without wifi',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.check_sharp,
                              color: Colors.green, size: 30.0),
                          const SizedBox(width: 5),
                          Text('Music without ad interruptions',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.check_sharp,
                              color: Colors.green, size: 30.0),
                          const SizedBox(width: 5),
                          Text('2x higher sound quality than our free plan',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.check_sharp,
                              color: Colors.green, size: 30.0),
                          const SizedBox(width: 5),
                          Text('cancel monthly plans online anytime',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                height: 90.0,
                width: 360.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 48, 46, 46),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Spotify Free',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text('CURRENT PLAN',
                          style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Text(
                  'Pick your Premium',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0),
                ),
              ),
              Container(
                height: 290.0,
                width: 360.0,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 70, 172, 255),
                      Color.fromARGB(255, 23, 58, 164)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(35.0, 40.0, 35.0, 10.0),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: Row(
                          children: [
                            Text(
                              'Mini',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text('From ₹7',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text('FOR 1 DAY',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      '1 day and 1 week plans • Ad-free music \n    on mobile • Download 30 songs on 1 \n        mobile device • Mobile only plan',
                      style: TextStyle(
                          color: Colors.white,
                          //fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          textStyle: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                          child: Text(
                            'VIEW PLANS',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Prices vary according to duration of plan.\n            Terms and conditions apply',
                      style: TextStyle(
                        color: Color.fromARGB(171, 255, 255, 255),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              Container(
                height: 290.0,
                width: 360.0,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 20, 100, 68),
                      Color.fromARGB(255, 65, 164, 123),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(35.0, 40.0, 35.0, 10.0),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: Row(
                          children: [
                            Text(
                              'Premium Individual',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text('From ₹199',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text('FOR 1 MONTH',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Ad-free music listening • Download to\n  listen offline • Debit and credit cards \n                         accepted',
                      style: TextStyle(
                          color: Colors.white,
                          //fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          textStyle: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                          child: Text(
                            'VIEW PLANS',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Prices vary according to duration of plan.\n            Terms and conditions apply',
                      style: TextStyle(
                        color: Color.fromARGB(171, 255, 255, 255),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              Container(
                height: 310.0,
                width: 360.0,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 96, 20, 108),
                      Color.fromARGB(255, 188, 36, 219)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(35.0, 40.0, 35.0, 10.0),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: Row(
                          children: [
                            Text(
                              'Premium Family',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text('From ₹199',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text('FOR 1 MONTH',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Choose 1,3,6 or 12 months of Premium\n • Pay with Paytm or UPI.Top up when\n   you want • Debit and credit cards\n                        accepted',
                      style: TextStyle(
                          color: Colors.white,
                          //fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0, bottom: 8.0),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          textStyle: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                          child: Text(
                            'VIEW PLANS',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Prices vary according to duration of plan.\n           Terms and conditions apply',
                      style: TextStyle(
                        color: Color.fromARGB(171, 255, 255, 255),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              Container(
                height: 290.0,
                width: 360.0,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 137, 151, 9),
                      Color.fromARGB(255, 241, 230, 85)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(35.0, 40.0, 35.0, 10.0),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: Row(
                          children: [
                            Text(
                              'Premium Student',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text('From ₹66',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text('FOR 1 MONTH',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Ad-free music listening • Download to\n                      listen offline',
                      style: TextStyle(
                          color: Colors.white,
                          //fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          textStyle: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                          child: Text(
                            'VIEW PLANS',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'offer available only to students at ann accredited higher\n     education institution. Terms and conditions apply.',
                      style: TextStyle(
                        color: Color.fromARGB(171, 255, 255, 255),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
