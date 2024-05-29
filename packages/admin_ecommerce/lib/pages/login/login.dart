import 'package:slaega_admin_ecommerce/locator.dart';
import 'package:slaega_admin_ecommerce/provider/auth.dart';
import 'package:slaega_admin_ecommerce/rounting/route_names.dart';
import 'package:slaega_admin_ecommerce/services/navigation_service.dart';
import 'package:slaega_admin_ecommerce/widgets/custom_text.dart';
import 'package:slaega_admin_ecommerce/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
    final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
        final authProvider = Provider.of<AuthProvider>(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.indigo.shade600
          ]
        )
            
      ),
      child: authProvider.status == Status.Authenticating? Loading() : Scaffold(
        key: _key,
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            color: Colors.red,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),

                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(0, 3), blurRadius: 24)
                  ]),
              height: 400,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSelectableText(text: "LOGIN", size: 22, weight: FontWeight.bold,),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: TextField(
                          controller: authProvider.email,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            icon: Icon(Icons.email_outlined)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: TextField(
                          controller: authProvider.password,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              icon: Icon(Icons.lock_open)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),

                  Padding(
                    padding: const EdgeInsets.only(right:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomSelectableText(text: "Forgot password?", size: 16,color: Colors.grey,),
                      ],
                    ),
                  ),

                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo
                      ),
                      child: FlatButton(
                        onPressed: ()async{
                           if(!await authProvider.signIn()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: SelectableText("Login failed!"))

                    );
                    return;
                  }
                  authProvider.clearController();

                          locator<NavigationService>().globalNavigateTo(LayoutRoute, context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical:4),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomSelectableText(text: "LOGIN", size: 22, color: Colors.white, weight: FontWeight.bold,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),

                  Padding(
                    padding: const EdgeInsets.only(right:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomSelectableText(text: "Do not have an account? ", size: 16,color: Colors.grey,),
                        GestureDetector(
                            onTap: (){
                              locator<NavigationService>().globalNavigateTo(RegistrationRoute, context);
                            },
                            child: CustomSelectableText(text: "Sign up here. ", size: 16,color: Colors.indigo,)),

                      ],
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
