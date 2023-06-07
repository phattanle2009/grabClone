import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';
import 'package:grab_clone/database/database.dart';
import 'package:grab_clone/model/contact_model.dart';

class EmergencyAddContactBloc extends Bloc {
  final _controller = StreamController<ContactModel>();
  late Stream<ContactModel> result;
  final _enableButtonController = StreamController<bool>();
  late Stream<bool> enableButtonController;
  final _showIndicatorController = StreamController<bool>();
  late Stream<bool> showIndicator;

  EmergencyAddContactBloc() {
    bindingController();
  }
  @override
  void bindingController() {
    result = _controller.stream.map((event) => event);
    enableButtonController = _enableButtonController.stream.map((event) => event);
    showIndicator = _showIndicatorController.stream.map((event) => event);
  }

  @override
  void dispose() {
    _controller.close();
  }

  void addNewContact(ContactModel newContact) {
    _controller.notifyValue(DBProvider.db.newContact(newContact));
  }

  void enableBottomButton(String name, String phone) {
    _enableButtonController.notifyValue(!name.isEmpty && !phone.isEmpty);
  }

  void showIndicatorProcess(bool show) {
    _showIndicatorController.notifyValue(show);
  }
}
