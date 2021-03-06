import 'package:flutter/material.dart';
import 'package:flutter_awesome/app/components/app_button.dart';
import 'package:flutter_awesome/app/components/app_category_title.dart';
import 'package:flutter_awesome/app/components/app_container.dart';
import 'package:flutter_awesome/basic_widget/adaptive/hello_adaptive.dart';
import 'package:flutter_awesome/basic_widget/alert_dialog/hello_alert_dialog.dart';
import 'package:flutter_awesome/basic_widget/animated_coress_fade/hello_animated_cross_fade.dart';
import 'package:flutter_awesome/basic_widget/badge/hello_badge.dart';
import 'package:flutter_awesome/basic_widget/base_line/hello_base_line.dart';
import 'package:flutter_awesome/basic_widget/bottom_navigation_bar/hello_bottom_navigation_bar.dart';
import 'package:flutter_awesome/basic_widget/checkbox_list_tile/hello_checkbox_list_tile.dart';
import 'package:flutter_awesome/basic_widget/chip/hello_choice_chip.dart';
import 'package:flutter_awesome/basic_widget/clip_rrect/hello_clip_rrect.dart';
import 'package:flutter_awesome/basic_widget/date_picker/hello_date_picker.dart';
import 'package:flutter_awesome/basic_widget/dropdown_button/hello_dropdown_button.dart';
import 'package:flutter_awesome/basic_widget/expand/hello_expanded.dart';
import 'package:flutter_awesome/basic_widget/expansion/basic_expansion_tile.dart';
import 'package:flutter_awesome/basic_widget/fitted_box/hello_fitted_box.dart';
import 'package:flutter_awesome/basic_widget/flexible/hello_flexible.dart';
import 'package:flutter_awesome/basic_widget/future_builder/hello_future_builder.dart';
import 'package:flutter_awesome/basic_widget/gesture_detector/hello_gesture_detector.dart';
import 'package:flutter_awesome/basic_widget/grid_paper/hello_grid_paper.dart';
import 'package:flutter_awesome/basic_widget/hero/hello_hero.dart';
import 'package:flutter_awesome/basic_widget/ink_well/hello_ink_well.dart';
import 'package:flutter_awesome/basic_widget/interactive_view/hello_interactive_viewer.dart';
import 'package:flutter_awesome/basic_widget/modal_bottom_sheet/hello_modal_bottom_sheet.dart';
import 'package:flutter_awesome/basic_widget/page_view/hello_page_view.dart';
import 'package:flutter_awesome/basic_widget/popup_menu_button/hello_popup_menu_button.dart';
import 'package:flutter_awesome/basic_widget/positioned/hello_positioned.dart';
import 'package:flutter_awesome/basic_widget/range_slider/hello_range_slider.dart';
import 'package:flutter_awesome/basic_widget/scaffold_messenger/hello_scaffold_message.dart';
import 'package:flutter_awesome/basic_widget/search_bar/hello_search_bar.dart';
import 'package:flutter_awesome/basic_widget/selectable_text/hello_selectable_text.dart';
import 'package:flutter_awesome/basic_widget/simple_dialog/hello_simple_dialog.dart';
import 'package:flutter_awesome/basic_widget/sliver_app_bar/hello_sliver_app_bar.dart';
import 'package:flutter_awesome/basic_widget/spacer/hello_spacer.dart';
import 'package:flutter_awesome/basic_widget/spread_operator/hello_spread_operator.dart';
import 'package:flutter_awesome/basic_widget/stack/hello_stack.dart';
import 'package:flutter_awesome/basic_widget/stepper/hello_stepper.dart';
import 'package:flutter_awesome/basic_widget/stream_builder/hello_stream_builder.dart';
import 'package:flutter_awesome/basic_widget/tab_page_selector/hello_tab_page_selector.dart';
import 'package:flutter_awesome/basic_widget/table/hello_table.dart';
import 'package:flutter_awesome/basic_widget/text_field/hello_text_field.dart';
import 'package:flutter_awesome/basic_widget/time_picker/time_picker.dart';
import 'package:flutter_awesome/basic_widget/tooltip/hello_tooltip.dart';
import 'package:flutter_awesome/basic_widget/visibility/hello_visibility.dart';
import 'package:flutter_awesome/basic_widget/will_pop_scope/hello_will_pop_scope.dart';
import 'package:flutter_awesome/example/animation/coffee_login/animation_coffee_login.dart';
import 'package:flutter_awesome/example/bottom_navigator_bar/material_navigator_bar/materail_navigator_bar.dart';
import 'package:flutter_awesome/example/index.dart';
import 'package:flutter_awesome/example/login/retrieve_value_from_textfield/login_retrieve_value_from_textfield.dart';
import 'package:flutter_awesome/example/provider/hello_provider/hello_provider_main.dart';
import 'package:flutter_awesome/third_widget/hell0_path_provider.dart';

import '../example/rest_api/flutter_consume_rest_api_with_best_practices/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Awesome'),
      ),
      body: SafeArea(
          child: ListView(
        children: const [
          AppCategoryTitle(title: '????????????'),
          AppContainer(
            children: [
              AppButton(text: 'Adaptive', page: HelloAdaptive()),
              AppButton(text: 'AlertDialog', page: HelloAlertDialog()),
              AppButton(text: 'AnimatedCrossFade', page: HelloAnimatedCrossFade()),
              AppButton(text: 'Badge', page: HelloBadge()),
              AppButton(text: 'BaseLine', page: HelloBaseLine()),
              AppButton(text: 'BottomNavigationBar', page: HelloBottomNavigationBar()),
              AppButton(text: 'CheckboxListTile', page: HelloCheckboxListTile()),
              AppButton(text: 'ChoiceChip', page: HelloChoiceChip()),
              AppButton(text: 'ClipRRect', page: HelloClipRRect()),
              AppButton(text: 'DatePicker', page: HelloDatePicker()),
              AppButton(text: 'DropdownButton', page: HelloDropdownButton()),
              AppButton(text: 'Expanded', page: HelloExpanded()),
              AppButton(text: 'ExpansionTile', page: BasicExpansionTile()),
              AppButton(text: 'FittedBox', page: HelloFittedBox()),
              AppButton(text: 'Flexible', page: HelloFlexible()),
              AppButton(text: 'FutureBuilder', page: HelloFutureBuilder()),
              AppButton(text: 'GestureDetector', page: HelloGestureDetector()),
              AppButton(text: 'GridPaper', page: HelloGridPaper()),
              AppButton(text: 'Hero', page: HelloHero()),
              AppButton(text: 'InkWell', page: HelloInkWell()),
              AppButton(text: 'InteractiveViewer', page: HelloInteractiveViewer()),
              AppButton(text: 'ModalBottomSheet', page: HelloModalBottomSheet()),
              AppButton(text: 'PageView', page: HelloPageView()),
              AppButton(text: 'PopupMenuButton', page: HelloPopupMenuButton()),
              AppButton(text: 'Positioned', page: HelloPositioned()),
              AppButton(text: 'RangeSlider', page: HelloRangeSlider()),
              AppButton(text: 'ScaffoldMessenger', page: HelloScaffoldMessenger()),
              AppButton(text: 'SearchBar', page: HelloSearchBar()),
              AppButton(text: 'SelectableText', page: HelloSelectableText()),
              AppButton(text: 'SimpleDialog', page: HelloSimpleDialog()),
              AppButton(text: 'SliverAppBar', page: HelloSliverAppBar()),
              AppButton(text: 'Spacer', page: HelloSpacer()),
              AppButton(text: 'SpreadOperator', page: HelloSpreadOperator()),
              AppButton(text: 'Stepper', page: HelloStepper()),
              AppButton(text: 'Stack', page: HelloStack()),
              AppButton(text: 'StreamBuilder', page: HelloStreamBuilder()),
              AppButton(text: 'Table', page: HelloTable()),
              AppButton(text: 'TabPageSelector', page: HelloTabPageSelector()),
              AppButton(text: 'TextField', page: HelloTextField()),
              AppButton(text: 'TimePicker', page: TimePicker()),
              AppButton(text: 'Tooltip', page: HelloTooltip()),
              AppButton(text: 'Visibility', page: HelloVisibility()),
              AppButton(text: 'WillPopScope', page: HelloWillPopScope()),
            ],
          ),
          AppCategoryTitle(title: '?????????'),
          AppContainer(
            children: [
              AppButton(
                text: 'coffee login',
                page: AnimationCoffeeLoginPage(),
              ),
            ],
          ),
          AppCategoryTitle(title: '????????????'),
          AppContainer(
            children: [
              AppButton(
                text: 'PathProvider',
                page: HelloPathProvider(),
              ),
            ],
          ),
          AppCategoryTitle(title: '?????????'),
          AppContainer(
            children: [
              AppButton(
                text: 'onboarding screen',
                page: OnBoardingScreen(),
              ),
            ],
          ),
          AppCategoryTitle(title: 'Login???'),
          AppContainer(
            children: [
              AppButton(
                text: 'LoginRetrieveValueFromTextField',
                page: LoginRetrieveValueFromTextField(),
              ),
            ],
          ),
          AppCategoryTitle(title: 'Provider'),
          AppContainer(
            children: [
              AppButton(
                text: 'Hello Provider',
                page: HelloProviderMain(),
              ),
            ],
          ),
          AppCategoryTitle(title: '???????????????'),
          AppContainer(
            children: [
              AppButton(
                text: 'Material Navigator Bar',
                page: MaterialNavigatorBar(),
              ),
            ],
          ),
          AppCategoryTitle(title: 'Rest Api'),
          AppContainer(
            children: [
              AppButton(
                text: 'Consume Rest API With Best Practices',
                page: FlutterConsumeRestApiWithBestPracticesHomePage(),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
