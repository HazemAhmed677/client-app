import '../theming/app_colors.dart';
import '../widgets/common_container_for_check_board.dart';

List<ProirityContainer> getPriorityList() {
  return const [
    ProirityContainer(color: AppColors.highPriority, priority: 'High'),
    ProirityContainer(color: AppColors.mediumPriority, priority: 'Medium'),
    ProirityContainer(color: AppColors.lowPriority, priority: 'Low'),
  ];
}

List<ProirityContainer> getStatusList() {
  return const [
    ProirityContainer(color: AppColors.highPriority, priority: 'Not Started'),
    ProirityContainer(color: AppColors.onTrackColor, priority: 'On Track'),
    ProirityContainer(color: AppColors.mediumPriority, priority: 'Adjustments'),
    ProirityContainer(color: AppColors.lowPriority, priority: 'Completed'),
  ];
}
