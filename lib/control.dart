import 'package:assets_audio_player/assets_audio_player.dart';

final audio = AssetsAudioPlayer();
init() {
  audio.open(
    Audio('assets/audios/good.mp3'),
    showNotification: true,
  );
}

pauseAudio() {
  audio.playOrPause();
}

stopAudio() {
  audio.stop();
}

playAudio() {
  audio.playOrPause();
}
