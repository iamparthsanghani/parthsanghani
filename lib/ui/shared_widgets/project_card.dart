import 'package:flutter/material.dart';
import 'package:my_portfolio_app/models/project_model.dart';
import 'package:my_portfolio_app/ui/common/app_colors.dart';
import 'package:my_portfolio_app/ui/common/app_textstyles.dart';
import 'package:my_portfolio_app/ui/common/ui_helpers.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../services/network/url_launcher_service.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel project;
  final VoidCallback onTap;

  const ProjectCard({
    Key? key,
    required this.project,
    required this.onTap,
  }) : super(key: key);

  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;
  final UrlLauncherService _urlLauncherService = UrlLauncherService();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Transform.scale(
          scale: isHover ? 0.95 : 1.0, // Shrink slightly on hover
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.primaryDarkColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: isHover
                      ? AppColors.primaryColor.withAlpha(100)
                      : Colors.black.withAlpha(100),
                  blurRadius: 12.0,
                  offset: const Offset(0.0, 0.0),
                ),
              ],
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Show detailed info on hover
                if (isHover)
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Image.asset(
                            widget.project.projectIcon,
                            height: screenHeight(context) * 0.04,
                            fit: BoxFit.contain,
                          ),
                        ),
                        verticalSpaceSmall,
                        Flexible(
                          child: Text(
                            widget.project.projectTitle,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getValueForScreenType(
                                context: context,
                                desktop: 14,
                                tablet: 13,
                                mobile: 12,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        verticalSpaceSmall,
                        Flexible(
                          child: Text(
                            widget.project.shortDescription,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getValueForScreenType(
                                context: context,
                                desktop: 11,
                                tablet: 10,
                                mobile: 9,
                              ),
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(height: screenWidth(context) * 0.008),
                        Flexible(
                          child: Text(
                            "View Project Details",
                            style: AppTextStyles.l1b!.copyWith(
                              fontSize: getValueForScreenType(
                                context: context,
                                desktop: 9,
                                tablet: 8,
                                mobile: 7,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),

                // Show banner when not hovered
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 600),
                  opacity: isHover ? 0.0 : 1.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(widget.project.bannerList[0]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
