enum Sound {
  basic,
  sound1,
  sound2;

  String getSoundName() {
    switch (this) {
      case Sound.basic:
        return 'basic';
      case Sound.sound1:
        return 'sound1';
      case Sound.sound2:
        return 'sound2';
    }
  }
}
