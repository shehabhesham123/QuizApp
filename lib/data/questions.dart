import 'package:section2/models/question.dart';

var questions = const [
  Question(
    text: 'What are the main building blocks of Flutter UIs?',
    answars: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  Question(
    text: 'How are Flutter UIs built?',
    answars: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  Question(
    text: 'What\'s the purpose of a StatefulWidget?',
    answars: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  Question(
    text:
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answars: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  Question(
    text: 'What happens if you change data in a StatelessWidget?',
    answars: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  Question(
    text: 'How should you update data inside of StatefulWidgets?',
    answars: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
