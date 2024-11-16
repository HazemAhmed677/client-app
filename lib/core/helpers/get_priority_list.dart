import '../theming/app_colors.dart';
import '../widgets/common_container_for_check_board.dart';

List<ProirityContainer> getPriorityList() {
  return const [
    ProirityContainer(color: AppColors.highPriority, priority: 'High'),
    ProirityContainer(color: AppColors.mediumPriority, priority: 'Medium'),
    ProirityContainer(color: AppColors.lowPriority, priority: 'Low'),
  ];
}
