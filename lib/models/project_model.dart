class ProjectModel {
  final String projectTitle;
  final String androidLink;
  final String iosLink;
  final String projectDescription;
  final String shortDescription;
  final List<String> bannerList;
  final String projectIcon;
  final String projectGithubLink;
  final String projectLiveLink;
  final List<String> techStackIconList;

  ProjectModel({
    required this.projectTitle,
    required this.projectDescription,
    required this.shortDescription,
    required this.bannerList,
    required this.projectIcon,
    required this.projectGithubLink,
    required this.projectLiveLink,
    required this.techStackIconList,
    required this.androidLink,
    required this.iosLink,
  });
}

List projectList = [
  ProjectModel(
    projectTitle: 'Beforepay',
    androidLink:
        'https://play.google.com/store/apps/details?id=au.com.cheq&hl=en_AU',
    iosLink:
        'https://apps.apple.com/au/app/beforepay-borrow-up-to-2000/id1478582360',
    projectDescription: '''
Beforepay is a leading Australian fintech platform that empowers users to access their earned wages ahead of payday.

I contributed by embedding Flutter as a submodule into the existing native Android and iOS apps, enabling a smooth transition toward cross-platform development. This integration allowed Flutter screens to coexist within the native environment, supporting a gradual migration strategy.

Key contributions included:
- Seamless integration of Flutter submodule within native apps.
- Efficient communication between Flutter and native layers via custom platform channels.
- Ensured high performance, feature parity, and a consistent user experience across both platforms.
''',
    shortDescription:
        'Hybrid Flutter-native wage access app for Australian users with seamless performance.',
    bannerList: ['assets/images/Cover.png'],
    projectIcon: 'assets/images/beforpayIcon.png',
    projectGithubLink: '',
    // No GitHub link provided
    projectLiveLink:
        'https://play.google.com/store/apps/details?id=au.com.cheq&hl=en_AU',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/dart.png',
      'assets/images/firebase.png',
    ],
  ),
  ProjectModel(
    projectTitle: 'FAB',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.fab.personalbanking&hl=en',
    iosLink: 'https://apps.apple.com/au/app/fab-mobile-banking/id1383237548',
    projectDescription: '''
Developed and enhanced a high-performance mobile banking app for Premier customers at First Abu Dhabi Bank (FAB), UAE’s leading financial institution.

I focused on native integration, feature stability, and cross-platform excellence by leveraging Flutter with an MVC architecture. My role involved building and maintaining key features across both Android and iOS using Flutter, while extending platform-specific capabilities using Method Channels and native SDKs.

Key contributions:
- Flutter-based feature development for seamless Android and iOS experiences
- Native chatbot integration using Method Channels
- Collaboration with native SDKs for custom banking functionalities
- Delivered performance-tuned, secure, and stable banking features aligned with compliance standards
''',
    shortDescription:
        'Premier mobile banking app with native-flutter synergy and robust platform-specific features.',
    bannerList: ['assets/project_banners/fab_banner.png'],
    projectIcon: 'assets/images/fab_app_icon.png',
    projectGithubLink: '',
    // No GitHub link provided
    projectLiveLink:
        'https://play.google.com/store/apps/details?id=com.fab.personalbanking&hl=en',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/dart.png',
      'assets/images/firebase.png',
    ],
  ),
  ProjectModel(
    androidLink:
    'https://play.google.com/store/apps/details?id=com.app.anuroop',
    iosLink: 'https://apps.apple.com/in/app/anuroop/id1189015020',
    projectTitle: 'Anuroop',
    projectDescription:
    'Contributed to the development of Anuroop, one of the largest Marathi matrimonial apps, by enhancing real-time features, analytics, payments, and backend logic using Flutter and Firebase.\n\nKey Contributions:\n- Integrated Firebase Firestore, Authentication, and Cloud Functions for secure and dynamic backend operations\n- Developed and maintained Cloud Functions to automate business logic and handle custom data workflows\n- Implemented Firebase Analytics and Datadog for real-time user behavior tracking and performance monitoring\n- Integrated Razorpay and Stripe payment gateways for seamless and secure transaction support\n\nTech Stack:\n- Flutter with custom BLoC architecture\n- Firebase Suite (Firestore, Auth, Cloud Functions, Analytics)\n- Native channel implementation for platform-specific features (PDF viewer, chatbot)\n- Datadog for observability\n- Razorpay & Stripe for payments',
    shortDescription:
    'A robust Marathi matrimonial platform built with Flutter and Firebase, featuring real-time updates, analytics, and secure payments.',
    bannerList: ['assets/project_banners/anuroop.png'],
    projectIcon: 'assets/images/anuroop_logo.png',
    projectGithubLink: '',
    projectLiveLink:
    'https://play.google.com/store/apps/details?id=com.app.anuroop&hl=en_IN',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/firebase.png',
      'assets/images/razorpay.png',
      'assets/images/strip.png',
      'assets/images/datadog.png'
    ],
  ),

  ProjectModel(
    projectTitle: 'Wella',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.wella.world&hl=en',
    iosLink: 'https://apps.apple.com/us/app/wella/id1591833233',
    projectDescription: '''
Wella is a global beauty and wellness platform designed to deliver personalized digital experiences for both customers and salon professionals.

At Gophers Lab, I contributed to key modules such as the booking system, integrated third-party SDKs, and significantly enhanced performance through advanced state management techniques. I implemented Provider and Riverpod for reactive UI updates, integrated RESTful APIs using Retrofit, and ensured stability via crash analytics and monitoring tools.

Key contributions:
- Developed high-performance UI with lazy-loaded widgets
- Integrated third-party analytics and crash reporting SDKs
- Managed complex states using Provider and Riverpod
- Built seamless API layers with Retrofit and handled secure data flows
''',
    shortDescription:
        'A beauty and wellness app with advanced state management and a robust booking experience.',
    bannerList: ['assets/project_banners/well.png'],
    projectIcon: 'assets/images/well_app_icon.png',
    projectGithubLink: '',
    // No public GitHub link provided
    projectLiveLink:
        'https://play.google.com/store/apps/details?id=com.wella.world&hl=en',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/api-interface.png',
      'assets/images/firebase.png',
    ],
  ),
  ProjectModel(
    projectTitle: 'SimplePay – POS & HR Self-Service App',
    androidLink:
        'https://play.google.com/store/apps/details?id=cloud.simplepay.mobile.v1&gl=US',
    iosLink:
        'https://apps.apple.com/in/app/simplepay-self-service/id1501139428',
    projectDescription: '''
SimplePay is a dual-purpose mobile platform that provides Point-of-Sale (POS) services for merchants and self-service HR functionalities for employees.

As a Flutter developer, I contributed across both domains. For the POS side, I integrated secure payment gateways, built offline-first features using local caching, and supported platform-specific hardware like printers. On the HR side, I implemented key employee features such as leave management, payslip access, and real-time payroll tracking using REST APIs. I also contributed to a rich learning experience by integrating educational modules with interactive tutorials and videos.

Key Contributions:
- Offline-first POS functionality with Isolate-based background processing
- Secure payments via SDKs and platform channel printer integration
- Self-service HR tools including leave and payroll features
- Bloc-based state management with RESTful API integration
- Educational content support with video and tutorial modules
''',
    shortDescription:
        'A powerful POS and HR mobile solution for merchants and employees, with secure transactions and real-time self-service features.',
    bannerList: ['assets/project_banners/simplepay.png'],
    projectIcon: 'assets/images/simple_pay_app_icon.png',
    projectGithubLink: '',
    // No public repo provided
    projectLiveLink:
        'https://play.google.com/store/apps/details?id=cloud.simplepay.mobile.v1&hl=en_IN',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/firebase.png',
      'assets/images/razorpay.png',
    ],
  ),
  ProjectModel(
    projectTitle: 'Octopod',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.msguru.octopod&gl=US',
    // Add Android link if available
    iosLink: 'https://apps.apple.com/in/app/studentink/id1494584140',
    // Assuming placeholder, update if needed
    projectDescription: '''
Octopod is an innovative educational platform designed to unify learners, educators, payors, and administrators into a cohesive digital community. 

My contributions involved implementing critical real-time features and enhancing the overall student and teacher experience. I integrated Firebase Realtime Database for seamless chat functionality, embedded Vimeo player for in-app educational video streaming, and developed a real-time bus tracking system using Google Maps API for safe and reliable student transport management.

Key Features:
- Real-time Chat with Firebase Realtime Database
- Embedded Vimeo Video Player for learning modules
- Real-time Bus Tracking with Google Maps
- Built with Flutter and Bloc pattern using TDD principles
''',
    shortDescription:
        'An educational super-app with chat, learning video support, and real-time transport tracking.',
    bannerList: ['assets/project_banners/student_App_banner.png'],
    projectIcon: 'assets/images/stdapp_icon.png',
    projectGithubLink: '',
    projectLiveLink:
        'https://play.google.com/store/apps/details?id=cloud.simplepay.mobile.v1&hl=en_IN',
    // Placeholder, update if needed
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/firebase.png',
      'assets/images/dart.png',
    ],
  ),
];
