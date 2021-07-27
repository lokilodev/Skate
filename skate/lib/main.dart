// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skate/pages/cart_page.dart';
import 'package:skate/pages/checkout_page.dart';
import 'package:skate/pages/checkout_success_page.dart';
import 'package:skate/pages/detail_chat_page.dart';
import 'package:skate/pages/edit_profile_page.dart';
import 'package:skate/pages/home/main_page.dart';
import 'package:skate/pages/product_page.dart';
import 'package:skate/pages/sign_in_page.dart';
import 'package:skate/pages/sign_up_page.dart';
import 'package:skate/pages/splash_page.dart';
import 'package:skate/providers/auth_provider.dart';
import 'package:skate/providers/cart_provider.dart';
import 'package:skate/providers/page_provider.dart';
import 'package:skate/providers/product_provider.dart';
import 'package:skate/providers/transaction_provider.dart';
import 'package:skate/providers/wishlist_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        // ChangeNotifierProvider(
        //   create: (context) => WishlistProvider(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => CartProvider(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => TransactionProvider(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => PageProvider(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign_in': (context) => SignInPage(),
          '/sign_up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail_chat': (context) => DetailChatPage(),
          '/edit_profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout_success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
