abstract class ImageStates {}

class InitialImageState extends ImageStates {}

class LoadingImageState extends ImageStates {}

class SuccessImageState extends ImageStates {}

class FailureImageState extends ImageStates {
  final String error;

  FailureImageState({required this.error});
}
