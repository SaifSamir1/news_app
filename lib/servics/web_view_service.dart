import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/mangers/home_cubit/home_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebView extends StatelessWidget {
  const CustomWebView({super.key, required this.webUrl});

  final String webUrl;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Stack(
          children: [
            WebView(
              onPageFinished: (url) {
                BlocProvider.of<HomeCubit>(context).isLoading(false);
              },
              initialUrl: webUrl,
              javascriptMode: JavascriptMode.unrestricted,
            ),
            BlocProvider.of<HomeCubit>(context).webViewLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : const SizedBox(), //
          ],
        );
      },
    );
  }
}
