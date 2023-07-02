import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key, required this.msg});

  final msg;

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return ListView.separated(
      itemCount: widget.msg.length,
      separatorBuilder: (BuildContext context, int index) {
        return const Padding(padding: EdgeInsets.only(top: 10));
      },
      itemBuilder: (BuildContext _, int i) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: widget.msg[i]['isUserMessage']
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(20),
                    topRight: const Radius.circular(20),
                    bottomRight: Radius.circular(
                        widget.msg[i]['isUserMessage'] ? 0 : 20),
                    topLeft: Radius.circular(
                        widget.msg[i]['isUserMessage'] ? 20 : 0),
                  ),
                  color: widget.msg[i]['isUserMessage']
                      ? Colors.grey.shade800
                      : Colors.grey.shade900.withOpacity(0.8),
                ),
                constraints: BoxConstraints(maxWidth: w * 2 / 3),
                child: Text(
                  widget.msg[i]['message'].text.text[0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
