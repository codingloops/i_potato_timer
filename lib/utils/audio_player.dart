import 'package:audioplayers/audioplayers.dart';

class AppAudioPalyer {
  static final player = AudioPlayer();

  static void playAudio() {
    stopAudio();
    player.setReleaseMode(ReleaseMode.loop);
    player.play(AssetSource('sound/sound.mp3'));
  }

  static void stopAudio() {
    player.stop();
  }

}
