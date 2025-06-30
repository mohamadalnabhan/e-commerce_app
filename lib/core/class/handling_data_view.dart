import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/class/status_request.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView({
    super.key,
    required this.statusRequest,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
            ? const Center(child: Text("loading.",style: TextStyle(fontSize: 30),))
        : statusRequest == StatusRequest.serverFail
        ? const Center(child: Text("server fail"))
        : statusRequest == StatusRequest.offlineFailure
        ? const Center(child: Text("online issue"))
        : statusRequest == StatusRequest.failure
        ? const Center(child: Text("failure "))
        : widget;
  }
}
class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest({
    super.key,
    required this.statusRequest,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(child: Text("loading.",style: TextStyle(fontSize: 30),))
        : statusRequest == StatusRequest.serverFail
        ? const Center(child: Text("server fail"))
        : statusRequest == StatusRequest.offlineFailure
        ? const Center(child: Text("online issue"))

       : widget;
  }
}