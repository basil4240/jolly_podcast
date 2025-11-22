import 'package:jolly_podcast/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:jolly_podcast/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:jolly_podcast/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:jolly_podcast/ui/views/login/login_view.dart';
import 'package:jolly_podcast/ui/views/podcast_list/podcast_list_view.dart';
import 'package:jolly_podcast/ui/views/episode_list/episode_list_view.dart';
import 'package:jolly_podcast/ui/views/player/player_view.dart';
import 'package:jolly_podcast/ui/dialogs/network_error/network_error_dialog.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: PodcastListView),
    MaterialRoute(page: EpisodeListView),
    MaterialRoute(page: PlayerView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: NetworkErrorDialog),
// @stacked-dialog
  ],
)
class App {}
