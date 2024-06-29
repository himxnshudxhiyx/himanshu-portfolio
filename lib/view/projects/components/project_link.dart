import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        // Row(
        //   children: [
        //     const Text('Check on Github',style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis),
        //     IconButton(onPressed: () {/*launchUrl(Uri.parse(projectList[index].link));*/}, icon: SvgPicture.asset('assets/icons/github.svg')),
        //   ],
        // ),
        // const Spacer(),
        TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${projectList[index].name}',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  height: 0,
                                ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: size.width * 0.6,
                            child: Text(
                              '${projectList[index].description}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                    height: 0,
                                  ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 15,
                          // ),
                          // Image.asset(
                          //   projectList[index].image,
                          //   height: size.height * 0.5,
                          // )
                        ],
                      ),
                    ),
                  );
                },
              );
              // launchUrl(Uri.parse(projectList[index].link));
            },
            child: const Text(
              'Read More>>',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ))
      ],
    );
  }
}
