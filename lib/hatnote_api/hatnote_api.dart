import 'dart:async';
import 'dart:convert';

import 'package:listen_to_wikipedia/models/language.dart';
import 'package:listen_to_wikipedia/models/wikipedia_action.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class HatnoteApi {
  final Map<Language, WebSocketChannel> _languageChannels = {};

  Stream<WikipediaAction> actionsStream({required Language language}) {
    return getChannelForLanguage(language).stream
        .whereType<String>()
        .map(json.decode)
        .whereType<Map<String, dynamic>>()
        .map(WikipediaAction.fromJson);
  }

  Uri websocketUri(String languageCode) {
    return Uri.parse('wss://wikimon.hatnote.com/v2/$languageCode');
  }

  WebSocketChannel getChannelForLanguage(Language language) {
    if (!_languageChannels.containsKey(language)) {
      // TODO: Handle connection errors
      // TODO: Handle disconnect/pause/resume
      _languageChannels[language] = WebSocketChannel.connect(
        websocketUri(language.code),
      );
    }
    return _languageChannels[language]!;
  }
}
