import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_widgets.dart';

// import 'onboarding_model.dart';
// export 'onboarding_model.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key? key}) : super(key: key);

  @override
  _OnboardingWidgetState createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  // late OnboardingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  PageController pageViewController = PageController();
  int get pageViewCurrentIndex =>
      pageViewController.hasClients && pageViewController.page != null
          ? pageViewController.page!.round()
          : 0;

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => OnboardingModel());
  }

  @override
  void dispose() {
    // _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF14181B),
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1,
          child: Stack(
            children: [
              PageView(
                controller: pageViewController,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.807,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: const Color(0xFF14181B),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/logo-color.png',
                          errorBuilder: (context, a, b) {
                            return const Icon(Icons.error);
                          },
                        ).image,
                      ),
                    ),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: const BoxDecoration(
                        color: Color(0x990F1113),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 30),
                            child: Container(
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/logo-color.png',
                                    errorBuilder: (context, a, b) {
                                      return const Icon(Icons.error);
                                    },
                                  ).image,
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xFF00FF4B),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 30),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Welcome to \nTamadun Kuno',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 180),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 100),
                                    child: Text(
                                      'Lets Discover Some new thing\'s \nand interesting informations about Histories.',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: const Color(0xFF14181B),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/logo-color.png',
                          errorBuilder: (context, a, b) {
                            return const Icon(Icons.error);
                          },
                        ).image,
                      ),
                    ),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: const BoxDecoration(
                        color: Color(0x990F1113),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 20, 0, 0),
                              child: Container(
                                width: 300,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/logo-color.png',
                                      errorBuilder: (context, a, b) {
                                        return const Icon(Icons.error);
                                      },
                                    ).image,
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Text(
                                    'Let\'s build The \nHistorical knowledge ',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 30,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 100),
                                    child: Text(
                                      'Are you struggling study history or is that hard to understand? \n\nDon\'t worry you are in the perfect area. \nHere you can learn about the history without using books and it\'s easy to understand',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: const Color(0xFF14181B),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/logo-color.png',
                          errorBuilder: (context, a, b) {
                            return const Icon(Icons.error);
                          },
                        ).image,
                      ),
                    ),
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: const BoxDecoration(
                        color: Color(0x990F1113),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/logo-color.png',
                                    errorBuilder: (context, a, b) {
                                      return const Icon(Icons.error);
                                    },
                                    frameBuilder: (context, a, b, c) {
                                      return const Icon(Icons.error);
                                    },
                                    semanticLabel: 'Image',
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 30),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                    child: Text(
                                      'Upgrade to Preamium \nfor more Good Deeds',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 100),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '- More Informations\n- More Knowledge\n- Easy to Understand\n\nYou can know more and more information that you missed to learn.',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 70),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      if (kDebugMode) {
                                        print('Button pressed ...');
                                      }
                                    },
                                    text: 'Get In',
                                    options: FFButtonOptions(
                                      width: 240,
                                      height: 60,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      elevation: 2,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        width: 4,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0, 1),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 200),
                  child: smooth_page_indicator.SmoothPageIndicator(
                    controller: pageViewController,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    onDotClicked: (i) async {
                      await pageViewController.animateToPage(
                        i,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    effect: smooth_page_indicator.ExpandingDotsEffect(
                      expansionFactor: 4,
                      spacing: 8,
                      radius: 40,
                      dotWidth: 10,
                      dotHeight: 10,
                      dotColor: const Color(0xFFD9D9D9),
                      activeDotColor: FlutterFlowTheme.of(context).primaryColor,
                      paintStyle: PaintingStyle.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
