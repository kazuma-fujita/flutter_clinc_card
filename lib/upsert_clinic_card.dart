import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'favorite_list_view.dart';

class UpsertClinicCard extends StatelessWidget {
  const UpsertClinicCard({required this.arguments});
  final ClinicCardArguments arguments;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'card-${arguments.verticalIndex}${arguments.horizontalIndex}',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('診察券'),
        ),
        body: ClinicCardForm(),
      ),
    );
  }
}

class ClinicCardForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: TextField(
                maxLength: 4,
                maxLengthEnforcement:
                    MaxLengthEnforcement.truncateAfterCompositionEnds,
                decoration: const InputDecoration(
                  hintText: '診察券番号を入力してください',
                  labelText: '診察券番号',
                ),
                onSubmitted: (String name) {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: TextField(
                maxLength: 4,
                maxLengthEnforcement:
                    MaxLengthEnforcement.truncateAfterCompositionEnds,
                decoration: const InputDecoration(
                  hintText: '次回予約日時メモを入力してください',
                  labelText: '次回予約日時メモ',
                ),
                onSubmitted: (String name) {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: ElevatedButton(
                // color: Theme.of(context).primaryColorLight,
                onPressed: () => Navigator.pop(context),
                child: const Text('登録する'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
