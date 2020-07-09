import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        disposeViewModel: false,
        onModelReady: (model) => model.initialize(),
        builder: (context, model, widget) => model.isBusy
            ? Center(child: CircularProgressIndicator())
            : model.errorMessage.isNotEmpty
                ? Center(child: Text("${model.errorMessage}"))
                : Scaffold(
                    body: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: model.categoryList.categories.length,
                            itemBuilder: (context, index) {
                              return Text(
                                  "${model.categoryList.categories[index].strCategory}");
                            },
                          )
                        ],
                      ),
                    ),
                  ));
  }
}
