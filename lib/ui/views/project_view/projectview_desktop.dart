import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_app/models/project_model.dart';
import 'package:my_portfolio_app/ui/shared_widgets/project_card.dart';
import 'package:my_portfolio_app/viewmodels/project_viewmodel/project_viewmodel.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_textstyles.dart';
import '../../common/ui_helpers.dart';

class ProjectViewDesktop extends StackedView<ProjectViewModel> {
  const ProjectViewDesktop({super.key});

  @override
  Widget builder(
      BuildContext context, ProjectViewModel viewModel, Widget? child) {
    AppTextStyles.init(context);

    return Column(
      children: [
        Text(
          'Portfolio',
          style: AppTextStyles.mainHeading,
        ),
        verticalSpaceSmall,
        Text(
          'Here are some of the recent projects I have worked on:',
          style: AppTextStyles.subHeading,
        ),
        verticalSpaceLarge,
        _buildResponsiveGrid(context, viewModel),
        verticalSpaceMassive
      ],
    );
  }

  Widget _buildResponsiveGrid(
      BuildContext context, ProjectViewModel viewModel) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Calculate responsive grid parameters
    final gridParams = _calculateGridParameters(screenWidth, screenHeight);

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          padding: EdgeInsets.symmetric(
            horizontal: gridParams.horizontalPadding,
            vertical: gridParams.verticalPadding,
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: gridParams.maxCrossAxisExtent,
              mainAxisSpacing: gridParams.mainAxisSpacing,
              crossAxisSpacing: gridParams.crossAxisSpacing,
              childAspectRatio: gridParams.childAspectRatio,
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                // Add container with overflow protection
                constraints: BoxConstraints(
                  maxHeight: gridParams.maxCrossAxisExtent *
                      gridParams.childAspectRatio,
                ),
                child: ProjectCard(
                    project: projectList[index],
                    onTap: () =>
                        viewModel.viewProjectDetails(projectList[index])),
              );
            },
            itemCount: projectList.length,
          ),
        );
      },
    );
  }

  GridParameters _calculateGridParameters(
      double screenWidth, double screenHeight) {
    // Define breakpoints for different screen sizes
    const double mobileBreakpoint = 600;
    const double tabletBreakpoint = 900;
    const double desktopBreakpoint = 1200;
    const double largeDesktopBreakpoint = 1600;

    // Calculate responsive parameters based on screen width
    double maxCrossAxisExtent;
    double childAspectRatio;
    double horizontalPadding;
    double verticalPadding;
    double mainAxisSpacing;
    double crossAxisSpacing;

    if (screenWidth < mobileBreakpoint) {
      // Mobile
      maxCrossAxisExtent = screenWidth - 32; // Full width minus padding
      childAspectRatio = 1.2; // Slightly taller for bigger cards
      horizontalPadding = 16;
      verticalPadding = 16;
      mainAxisSpacing = 16;
      crossAxisSpacing = 16;
    } else if (screenWidth < tabletBreakpoint) {
      // Tablet
      maxCrossAxisExtent = 500; // Increased from 400 for bigger cards
      childAspectRatio = 1.3; // Better for bigger cards
      horizontalPadding = 24;
      verticalPadding = 20;
      mainAxisSpacing = 20;
      crossAxisSpacing = 20;
    } else if (screenWidth < desktopBreakpoint) {
      // Small desktop
      maxCrossAxisExtent = 450; // Increased from 350 for bigger cards
      childAspectRatio = 1.4; // Good for bigger cards
      horizontalPadding = 32;
      verticalPadding = 24;
      mainAxisSpacing = 24;
      crossAxisSpacing = 24;
    } else if (screenWidth < largeDesktopBreakpoint) {
      // Desktop
      maxCrossAxisExtent = 400; // Increased from 320 for bigger cards
      childAspectRatio = 1.5; // Good balance for bigger cards
      horizontalPadding = 40;
      verticalPadding = 32;
      mainAxisSpacing = 28;
      crossAxisSpacing = 28;
    } else {
      // Large desktop
      maxCrossAxisExtent = 380; // Increased from 300 for bigger cards
      childAspectRatio = 1.6; // Good for bigger cards
      horizontalPadding = 48;
      verticalPadding = 40;
      mainAxisSpacing = 32;
      crossAxisSpacing = 32;
    }

    // Adjust for very wide screens (ultra-wide monitors)
    if (screenWidth > 2000) {
      maxCrossAxisExtent = 350; // Increased from 280 for bigger cards
      horizontalPadding = 60;
    }

    return GridParameters(
      maxCrossAxisExtent: maxCrossAxisExtent,
      childAspectRatio: childAspectRatio,
      horizontalPadding: horizontalPadding,
      verticalPadding: verticalPadding,
      mainAxisSpacing: mainAxisSpacing,
      crossAxisSpacing: crossAxisSpacing,
    );
  }

  @override
  ProjectViewModel viewModelBuilder(BuildContext context) => ProjectViewModel();
}

class GridParameters {
  final double maxCrossAxisExtent;
  final double childAspectRatio;
  final double horizontalPadding;
  final double verticalPadding;
  final double mainAxisSpacing;
  final double crossAxisSpacing;

  GridParameters({
    required this.maxCrossAxisExtent,
    required this.childAspectRatio,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
  });
}
