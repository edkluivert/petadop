import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/theme/cubit/theme_cubit.dart';
import '../../../../../core/utils/utils.dart';

class HeaderShimmer extends StatelessWidget {
  const HeaderShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: SizedBox(
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  width: 30,
                  height: 5,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: const Text(
                      'Shimmer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 30,
                  height: 5,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: const Text(
                      'Shimmer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  width: 30,
                  height: 5,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: const Text(
                      'Shimmer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const SizedBox(
              width: 52,
            ),
            BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  context.read<ThemeCubit>().changeThemeMode(
                        state.themeMode == ThemeMode.light
                            ? ThemeMode.dark
                            : ThemeMode.light,
                      );
                },
                child: SvgPicture.asset(
                  Utils.getIconPath('bulb'),
                  color: state.themeMode == ThemeMode.light
                      ? theme.primaryColorDark
                      : theme.primaryColor,
                  width: 24,
                  height: 24,
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
