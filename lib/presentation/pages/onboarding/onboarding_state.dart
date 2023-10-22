import 'package:booking_app/data/model/onboarding/onboarding.dart';
import 'package:booking_app/data/src/img_string.dart';

class OnboardingState {
  final List<Onboarding> onboardingList = [
    Onboarding(
      title: 'Find a Roomie!',
      descrition:
          'We\'ve helped millions across the nation find their perfect match... and you\'re next!',
      image: ImgString.cittaStanding,
    ),
    Onboarding(
      title: 'Your Roommate Finder',
      descrition:
          'Hey you, looking for a roommate? We\'ve helped millions across the nation find their perfect match... and you\'re next!',
      image: ImgString.cittaStanding1,
    ),
    Onboarding(
      title: 'Find Your Match!',
      descrition:
          'We\'ve helped millions across the nation find their perfect match... and you\'re next!',
      image: ImgString.cittaStanding2,
    ),
  ];

  int currentIndex = 0;

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }
}
