import 'package:audio_service/audio_service.dart';
import 'package:audioplayers/audioplayers.dart';

class RadiolaAudioHandler extends BaseAudioHandler {
  final AudioPlayer _player = AudioPlayer();

  RadiolaAudioHandler() {
    //_initialize();
  }

  Future<void> _initialize() async {
    _player.onPlayerStateChanged.listen((state) {
      playbackState.add(playbackState.value.copyWith(
        playing: state == PlayerState.playing,
        processingState: AudioProcessingState.ready,
      ));
    });
  }

  @override
  Future<void> play() => _player
      .play(UrlSource('https://solovievfm.hostingradio.ru/solovievfm32.aacp'));

  @override
  Future<void> pause() => _player.stop();
}
