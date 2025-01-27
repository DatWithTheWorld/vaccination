import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/button_blue.dart';

class Report extends StatelessWidget {
  const Report({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/image/headnode.png",
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Text(
                          "Hi, Cam Hoa",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.waving_hand_sharp,
                            color: Colors.amber,
                          ),
                        )
                      ],
                    ),
                    Transform.translate(
                      offset: const Offset(0, -10),
                      child: Text(
                        "Let's help you get vaccinated",
                        style: Theme.of(context).textTheme.bodyText2!.merge(
                              const TextStyle(
                                fontSize: 16,
                                color: Color(0xFF808080),
                              ),
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Image.asset('assets/icons/alert.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Emergency!",
                              style:
                                  Theme.of(context).textTheme.bodyText2!.merge(
                                        TextStyle(
                                          color: colorScheme.onPrimary,
                                          fontSize: 15,
                                        ),
                                      ),
                            ),
                            Image.asset('assets/icons/cona.png'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Have a",
                            style: TextStyle(
                                color: colorScheme.onPrimary,
                                fontSize: 15,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            " COVID-19",
                            style: TextStyle(
                                color: colorScheme.primary,
                                fontSize: 15,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            " case to report ?",
                            style: TextStyle(
                              color: colorScheme.onPrimary,
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size(130, 40),
                            backgroundColor: colorScheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Call Now',
                            style: Theme.of(context).textTheme.bodyText1!.merge(
                                  const TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size(130, 40),
                            backgroundColor: colorScheme.error,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Find Centre',
                            style: Theme.of(context).textTheme.bodyText1!.merge(
                                  const TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 5,
          bottom: 100, // Đặt hình ảnh 50 pixel bên ngoài phía phải
          child: Image.asset('assets/icons/bigcona.png'),
        ),
      ],
    );
  }
}
