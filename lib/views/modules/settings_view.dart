import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/auth_cubit/auth_cubit.dart';
import '../../helper/helper.dart';
import '../../widgets/custom_list_title.dart';
import '../auth/profile/profile_view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          CustomListTitle(
            title: "الحساب",
            icon: Icons.person_2_outlined,
            onTap: () {
              naviPush(context, widgetName: const ProfileView());
            },
          ),
          // CustomListTitle(
          //   title: ,
          //   icon: Icons.language,
          //   onTap: () {},
          // ),
          // CustomThemTitle(),
          // CustomListTitle(
          //   title: AppLocalizations.of(context)!.settings_style_note_label,
          //   icon: Icons.style_outlined,
          //   onTap: () {
          //     // CacheHelper.clearData();
          //   },
          // ),
          // CustomListTitle(
          //   title: AppLocalizations.of(context)!.settings_text_size_label,
          //   icon: Icons.text_fields_rounded,
          //   onTap: () {
          //     // CacheHelper.clearData();
          //   },
          // ),
          CustomListTitle(
            title: "تسجيل الخروج",
            icon: Icons.logout_rounded,
            onTap: () {
              BlocProvider.of<AuthCubit>(context).logOut(context);
              // CacheHelper.clearData();
            },
          ),
        ],
      ),
    );
  }
}
