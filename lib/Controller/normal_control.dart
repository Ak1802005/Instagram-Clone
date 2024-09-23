import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:socialapp/Constant/list-storage.dart';
import 'package:video_player/video_player.dart';

class NormalControl extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    reels(1);
  }

  Rx<File?> selectImage = Rx(null);
  Rx<File?> selectPost = Rx(null);
  final RxList<File> _addedPosts = RxList<File>([]);
  late VideoPlayerController controller;

  List<File> get addedPosts => _addedPosts;

  Future<void> profileView() async {
    final ImagePicker picker = ImagePicker();

    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    selectImage.value = File(image!.path);
    update();
    //
    // final XFile? photo = await picker.pickImage(source: ImageSource.camera);
  }
  Future<void> postView(int index) async {
    final ImagePicker picker = ImagePicker();

    if(index==0){
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);

      selectPost.value = File(image!.path);
      update();
    }else if(index==1){
      final XFile? video = await picker.pickVideo(source: ImageSource.gallery);
      selectPost.value = File(video!.path);
      update();
    }
  }

  void addPost() {
    if (selectPost.value != null) {
      _addedPosts.add(selectPost.value!);
      selectPost.value = null;
    }
  }

  void reels(int index){
    controller = VideoPlayerController.networkUrl(Uri.parse(ConstListStorage.reels.value.values.elementAt(index)))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      });
  }

}
