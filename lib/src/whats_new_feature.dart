import 'package:flutter/material.dart';
import 'package:whats_new_feature/src/widgets/whats_new_feature_page.dart';
import 'package:whats_new_feature/src/widgets/whats_new_feature_tile.dart';

/// {@template whats_new_feature}
/// Show apple like whats new feature in the latest update
/// {@endtemplate}
class WhatsNewFeature {
  /// {@macro whats_new_feature}
  const WhatsNewFeature();
  
  /// show whats new page
  Future<void> showWhatsNew(
    BuildContext context, {
    required bool showWhatsNew,
    Function()? navigatedToWhatsNewPage,
    required List<WhatsNewFeatureTile> features,
    required String title,
    Color buttonColor = Colors.amber,
    Color buttonTextColor = Colors.black,
    required String buttonText,
    Duration delay = const Duration(seconds: 1),
  }) async {
    // do not navigate to whats new page if [showWhatsNew] false
    if (showWhatsNew == false) return;

    navigatedToWhatsNewPage?.call();
    Future.delayed(delay, () {
      _navigateToWhatsNewPage(
        context,
        features,
        title,
        buttonColor,
        buttonTextColor,
        buttonText
      );
    });
  }

  void _navigateToWhatsNewPage(
    BuildContext context,
    List<WhatsNewFeatureTile> features,
    String title,
    Color? buttonColor,
    Color? buttonTextColor,
    String buttonText
  ) {
    Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (context) => WhatsNewFeaturePage(
          title: title,
          buttonColor: buttonColor,
          features: features,
          buttonTextColor: buttonTextColor,
          buttonText: buttonText
        ),
      ),
    );
  }
}
