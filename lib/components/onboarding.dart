import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class AppBarOnboarding extends StatelessWidget implements PreferredSizeWidget {
  const AppBarOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 10,
          bottom: 10,
        ),
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class NavSkipText extends StatelessWidget {
  const NavSkipText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Skip",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class OboardingImage extends StatelessWidget {
  final String imagepath;

  const OboardingImage({super.key, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height / 2),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagepath),
          // fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class OnboardingText extends StatelessWidget {
  final String text;
  const OnboardingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            height: 1.5,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class NavTile extends StatelessWidget {
  final Color color;
  const NavTile({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 15,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class OnboardingNavigation extends StatelessWidget {
  final Widget destination;
  final int pageno;
  const OnboardingNavigation({
    super.key,
    required this.pageno,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                NavTile(color: pageno == 1 ? Colors.blue : Colors.grey),
                const SizedBox(width: 5),
                NavTile(color: pageno == 2 ? Colors.blue : Colors.grey),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => destination),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
