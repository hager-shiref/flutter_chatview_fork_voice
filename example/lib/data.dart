import 'package:chatview/chatview.dart';

class Data {
  static const profileImage =
      "https://raw.githubusercontent.com/SimformSolutionsPvtLtd/flutter_showcaseview/master/example/assets/simform.png";
  static final messageList = [
    Message(
      id: '1',
      isSpam: false,
      message: "Hi!",
      spamMessage: '',
      createdAt: DateTime.now(),
      sendBy: '1',
      // userId of who sends the message
      status: MessageStatus.read,
    ),
    Message(
      id: '2',
      isSpam: false,
      spamMessage: '',
      message: "Hi!",
      createdAt: DateTime.now(),
      sendBy: '2',
      status: MessageStatus.read,
    ),
    Message(
      id: '3',
      isSpam: false,
      spamMessage: '',
      message: "We can meet?I am free",
      createdAt: DateTime.now(),
      sendBy: '1',
      status: MessageStatus.read,
    ),
    Message(
      id: '4',
      spamMessage: '',
      message: "Can you write the time and place of the meeting?",
      createdAt: DateTime.now(),
      sendBy: '1',
      isSpam: false,
      status: MessageStatus.read,
    ),
    Message(
      id: '5',
      spamMessage: '',
      message: "That's fine",
      createdAt: DateTime.now(),
      sendBy: '2',
      isSpam: false,
      reaction: Reaction(reactions: ['\u{2764}'], reactedUserIds: ['1']),
      status: MessageStatus.read,
    ),
    Message(
      id: '6',
      spamMessage: '',
      message: "When to go ?",
      createdAt: DateTime.now(),
      sendBy: '3',
      isSpam: false,
      status: MessageStatus.read,
    ),
    Message(
      id: '7',
      spamMessage: '',
      message: "I guess Simform will reply",
      createdAt: DateTime.now(),
      sendBy: '4',
      isSpam: false,
      status: MessageStatus.read,
    ),
    Message(
      id: '8',
      spamMessage: '',
      message: "https://bit.ly/3JHS2Wl",
      createdAt: DateTime.now(),
      sendBy: '2',
      isSpam: false,
      //
      // reaction: Reaction(
      //   reactions: ['\u{2764}', '\u{1F44D}', '\u{1F44D}'],
      //   reactedUserIds: ['2', '3', '4'],
      // ),
      status: MessageStatus.read,
      replyMessage: const ReplyMessage(
        message: "Can you write the time and place of the meeting?",
        replyTo: '1',
        replyBy: '2',
        messageId: '4',
      ),
    ),
    Message(
      id: '9',
      spamMessage: '',
      message: "Done",
      isSpam: false,

      createdAt: DateTime.now(),
      sendBy: '1',
      status: MessageStatus.read,
      // reaction: Reaction(
      //   reactions: [
      //     '\u{2764}',
      //     '\u{2764}',
      //     '\u{2764}',
      //   ],
      //   reactedUserIds: ['2', '3', '4'],
      // ),
    ),
    Message(
      id: '10',
      message: "Thank you!!",
      status: MessageStatus.read,
      isSpam: false,
      spamMessage: '',

      createdAt: DateTime.now(),
      sendBy: '1',
      // reaction: Reaction(
      //   reactions: ['\u{2764}', '\u{2764}', '\u{2764}', '\u{2764}'],
      //   reactedUserIds: ['2', '4', '3', '1'],
      // ),
    ),
    Message(
      id: '11',
      message: "https://miro.medium.com/max/1000/0*s7of7kWnf9fDg4XM.jpeg",
      createdAt: DateTime.now(),
      isSpam: false,
      spamMessage: '',
      messageType: MessageType.image,
      sendBy: '1',
      reaction: Reaction(reactions: ['\u{2764}'], reactedUserIds: ['2']),
      status: MessageStatus.read,
    ),
    Message(
      id: '12',
      message: "🤩🤩",
      createdAt: DateTime.now(),
      sendBy: '2',
      isSpam: false,
      spamMessage: '',
      status: MessageStatus.read,
    ),
    Message(
      id: '13',
      messageType: MessageType.voice,
      spamMessage: '',
      message:
          "https://back.qurancourses.technoraft.com/storage/742/audio_1703590388030.m4a",
      createdAt: DateTime.now(),
      sendBy: '1',
      isSpam: false,
      status: MessageStatus.read,
    ),
    Message(
      id: '14',
      messageType: MessageType.voice,
      spamMessage: '',
      message:
          "https://back.qurancourses.technoraft.com/storage/742/audio_1703590388030.m4a",
      createdAt: DateTime.now(),
      isSpam: false,
      sendBy: '2',
      status: MessageStatus.read,
    ),
  ];
}
