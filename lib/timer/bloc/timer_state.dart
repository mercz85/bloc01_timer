part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  const TimerState({required this.duration});

  final int duration;

  @override
  List<Object> get props => [duration];
}

class TimerInitial extends TimerState {
  const TimerInitial(int duration) : super(duration: duration);

  @override
  String toString() {
    return 'TimerInitial { duration: $duration}';
  }
}

class TimerRunPause extends TimerState {
  const TimerRunPause(int duration) : super(duration: duration);

  @override
  String toString() {
    return 'TimerRunPause { duration: $duration}';
  }
}

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(int duration) : super(duration: duration);

  @override
  String toString() {
    return 'TimerRunInProgress { duration: $duration}';
  }
}

class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(duration: 0);
}
