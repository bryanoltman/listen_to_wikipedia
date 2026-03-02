import 'package:listen_to_wikipedia/models/language.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class HatnoteApi {
  final Map<Language, WebSocketChannel> _languageChannels = {};

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
