/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 17:06:50
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-16 15:04:27
 * @FilePath: /phoenix_step/example/lib/step_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';

import 'horizontal_step_example.dart';
import 'list_item.dart';
import 'step_line_example.dart';

class StepExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(
        title: "步骤条示例",
      ),
      body: ListView(
        children: [
          ListItem(
            title: "横向步骤条",
            isShowLine: false,
            describe: "显示流程阶段，告知用户'我在哪/我能去哪'，跟随主题色",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return HorizontalStepExamplePage(title: "步骤条");
                },
              ));
            },
          ),
          ListItem(
            title: "竖向步骤条",
            describe: '显示步骤、时间线',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return StepLineExample();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
