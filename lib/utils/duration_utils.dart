class DurationUtils {

  static int getNowMilliSecond() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  static int getFinalMilliseconds(
    DateTime dateTime,
    Duration durationOffset,
  ) {
    final timerDate = dateTime.add(durationOffset);
    return timerDate.millisecondsSinceEpoch;
  }

  static Duration getTimerDurationFromStartToEnd({
    required int startTimeEpoch,
    required int endTimeEpoch,
  }) {
    final timeElapsed = endTimeEpoch - startTimeEpoch;
    final timerDuration = Duration(milliseconds: timeElapsed);
    return timerDuration;
  }
}
