part of dashboard;

class DashboardController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    if (scaffoldKey.currentState != null) {
      scaffoldKey.currentState!.openDrawer();
    }
  }

  // Data
  _Profile getProfil() {
    return const _Profile(
      photo: AssetImage(ImageRasterPath.avatar1,package:'slaega_fb_management'),
      name: "Slaega",
      email: "slaega@gmail.com",
    );
  }

  List<TaskCardData> getAllTask() {
    return [
      const TaskCardData(
        title: "Landing page UI Design",
        dueDay: 2,
        totalComments: 50,
        type: TaskType.todo,
        totalContributors: 30,
        profilContributors: [
          AssetImage(ImageRasterPath.avatar1,package:'slaega_fb_management'),
          AssetImage(ImageRasterPath.avatar2,package:'slaega_fb_management'),
          AssetImage(ImageRasterPath.avatar3,package:'slaega_fb_management'),
          AssetImage(ImageRasterPath.avatar4,package:'slaega_fb_management'),
        ],
      ),
      const TaskCardData(
        title: "Landing page UI Design",
        dueDay: -1,
        totalComments: 50,
        totalContributors: 34,
        type: TaskType.inProgress,
        profilContributors: [
          AssetImage(ImageRasterPath.avatar5,package:'slaega_fb_management'),
          AssetImage(ImageRasterPath.avatar6,package:'slaega_fb_management'),
          AssetImage(ImageRasterPath.avatar7,package:'slaega_fb_management'),
          AssetImage(ImageRasterPath.avatar8,package:'slaega_fb_management'),
        ],
      ),
      const TaskCardData(
        title: "Landing page UI Design",
        dueDay: 1,
        totalComments: 50,
        totalContributors: 34,
        type: TaskType.done,
        profilContributors: [
          AssetImage(ImageRasterPath.avatar5,package:'slaega_fb_management'),
          AssetImage(ImageRasterPath.avatar3,package:'slaega_fb_management'),
          AssetImage(ImageRasterPath.avatar4,package:'slaega_fb_management'),
          AssetImage(ImageRasterPath.avatar2,package:'slaega_fb_management'),
        ],
      ),
    ];
  }

  ProjectCardData getSelectedProject() {
    return ProjectCardData(
      percent: .3,
      projectImage: const AssetImage(ImageRasterPath.logo1,package:'slaega_fb_management'),
      projectName: "Marketplace Mobile",
      releaseTime: DateTime.now(),
    );
  }

  List<ProjectCardData> getActiveProject() {
    return [
      ProjectCardData(
        percent: .3,
        projectImage: const AssetImage(ImageRasterPath.logo2,package:'slaega_fb_management'),
        projectName: "Taxi Online",
        releaseTime: DateTime.now().add(const Duration(days: 130)),
      ),
      ProjectCardData(
        percent: .5,
        projectImage: const AssetImage(ImageRasterPath.logo3,package:'slaega_fb_management'),
        projectName: "E-Movies Mobile",
        releaseTime: DateTime.now().add(const Duration(days: 140)),
      ),
      ProjectCardData(
        percent: .8,
        projectImage: const AssetImage(ImageRasterPath.logo4,package:'slaega_fb_management'),
        projectName: "Video Converter App",
        releaseTime: DateTime.now().add(const Duration(days: 100)),
      ),
    ];
  }

  List<ImageProvider> getMember() {
    return const [
      AssetImage(ImageRasterPath.avatar1,package:'slaega_fb_management'),
      AssetImage(ImageRasterPath.avatar2,package:'slaega_fb_management'),
      AssetImage(ImageRasterPath.avatar3,package:'slaega_fb_management'),
      AssetImage(ImageRasterPath.avatar4,package:'slaega_fb_management'),
      AssetImage(ImageRasterPath.avatar5,package:'slaega_fb_management'),
      AssetImage(ImageRasterPath.avatar6,package:'slaega_fb_management'),
    ];
  }

  List<ChattingCardData> getChatting() {
    return const [
      ChattingCardData(
        image: AssetImage(ImageRasterPath.avatar6,package:'slaega_fb_management'),
        isOnline: true,
        name: "Samantha",
        lastMessage: "i added my new tasks",
        isRead: false,
        totalUnread: 100,
      ),
      ChattingCardData(
        image: AssetImage(ImageRasterPath.avatar3,package:'slaega_fb_management'),
        isOnline: false,
        name: "John",
        lastMessage: "well done john",
        isRead: true,
        totalUnread: 0,
      ),
      ChattingCardData(
        image: AssetImage(ImageRasterPath.avatar4,package:'slaega_fb_management'),
        isOnline: true,
        name: "Alexander Purwoto",
        lastMessage: "we'll have a meeting at 9AM",
        isRead: false,
        totalUnread: 1,
      ),
    ];
  }
}
