import 'package:flutter/material.dart';

class MenuSearches extends StatelessWidget {
  const MenuSearches({
    super.key,
    required this.fem,
    required this.ffem,
  });

  final double fem;
  final double ffem;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // search363 (60:14)
      left: 29 * fem,
      top: 50 * fem,
      child: SizedBox(
        width: 331 * fem,
        height: 36 * fem,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // menubarYoV (60:16)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 22 * fem, 0 * fem),
              width: 36 * fem,
              height: 36 * fem,
              child: Image.asset(
                'assets/images/menubar.png',
                width: 36 * fem,
                height: 36 * fem,
              ),
            ),
            Expanded(
              child: Container(
                // searchfieldfalsedefaultFhu (60:15)
                padding:
                    EdgeInsets.fromLTRB(8 * fem, 7 * fem, 8 * fem, 7 * fem),
                height: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x1effffff),
                  borderRadius: BorderRadius.circular(10 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        // iconmagnifyingglassLzF (I60:15;6:12)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 6 * fem, 0 * fem),
                        width: 15.63 * fem,
                        height: 15.78 * fem,
                        child: Image.asset(
                          'assets/images/icon-magnifyingglass.png',
                          width: 15.63 * fem,
                          height: 15.78 * fem,
                        ),
                      ),
                    ),
                    Container(
                      // placeholder3tf (I60:15;6:13)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 176.49 * fem, 0 * fem),
                      child: Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2941176471 * ffem / fem,
                          letterSpacing: -0.4079999924 * fem,
                          color: const Color(0x99ffffff),
                        ),
                      ),
                    ),
                    SizedBox(
                      // sfsymbolmicrophonevBm (I60:15;6:14)
                      width: 11.88 * fem,
                      height: 17.68 * fem,
                      child: Image.asset(
                        'assets/images/sf-symbol-microphone.png',
                        width: 11.88 * fem,
                        height: 17.68 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
