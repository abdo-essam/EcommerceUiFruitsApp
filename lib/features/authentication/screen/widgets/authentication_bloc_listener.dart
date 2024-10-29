import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/error_dialog.dart';
import '../../../../core/functions/loading_dialog.dart';
import '../../../../core/routes/routes.dart';
import '../../manager/authentication_cubit.dart';
import '../../manager/authentication_state.dart';

class AuthenticationBlocListener extends StatelessWidget {
  const AuthenticationBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listenWhen: (context, state) =>
          state is AuthenticationLoading ||
          state is AuthenticationInsertNameSuccess ||
          state is AuthenticationFailure,
      listener: (context, state) {
        if (state is AuthenticationLoading) {
          loadingDialog(context);
        } else if (state is AuthenticationInsertNameSuccess) {
          Navigator.of(context).pop();
          Navigator.of(context)
              .pushReplacementNamed(Routes.homeEcommerceScreen);
        } else if (state is AuthenticationFailure) {
          Navigator.of(context).pop();
          errorDialog(context, state.errorMessage);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
