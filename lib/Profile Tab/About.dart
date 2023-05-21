import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("About")),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
                  Text.rich(TextSpan(
                  text: "1. Getting Started",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text:
                            """\n\n- Welcome to our e-commerce app! This guide will help you navigate through the various features and make your shopping experience enjoyable.
- Create an account: To access all the features and make purchases, sign up for an account by clicking on the "Sign Up" button on the home screen.
- Browsing products: Explore our wide range of products by using the search bar or browsing through different categories.\n\n""",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                    TextSpan(
                      text: "2. Product Search and Filtering",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text:
                            """\n\n- Searching for products: Enter keywords related to the item you're looking for in the search bar, and our app will display relevant results.
- Filtering options: Use our filters to narrow down your search results by price, brand, size, color, and more. This makes it easier to find exactly what you're looking for.
\n\n""",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                    TextSpan(
                      text: "3. Product Details and Reviews",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text:
                            """\n\n- Product details: Click on a product to view its details, including description, specifications, pricing, and availability.
- Product images: Swipe left or right on the product images to view them from different angles.
- Customer reviews: Check out the ratings and reviews from other customers to make an informed decision about the product's quality and suitability.\n\n""",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),TextSpan(
                      text: "4. Adding to Cart and Checkout",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text:
                            """\n\n- Adding to cart: When you find a product you want to purchase, click on the "Add to Cart" button. You can adjust the quantity or remove items from your cart at any time.
- Secure checkout: Proceed to the checkout page to review your order details and enter your shipping and payment information securely. We prioritize the safety of your personal data.
\n\n""",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),TextSpan(
                      text: "5. Order Tracking and History",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text:
                            """\n\n- Order status: Once your order is placed, you can track its status from the "Orders" section in your account. We'll provide updates on the processing, shipping, and delivery of your order.
- Order history: View your past orders, reorder items, and track their status conveniently from the "Orders" section.
\n\n""",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),TextSpan(
                      text: "6. Payments and Security",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text:
                            """\n\n- Payment options: We accept various payment methods, including credit/debit cards, PayPal, and more. Choose the one that suits you best during the checkout process.
- Secure transactions: Our app utilizes industry-standard encryption and security measures to ensure your payment details are protected.\n\n""",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),TextSpan(
                      text: "7. Returns and Refunds",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text:
                            """\n\n- Return policy: If you're not satisfied with your purchase, you may initiate a return within X days of receiving the product. Check our return policy for detailed instructions.
- Refund process: Once your return is approved, we'll process the refund within X days. The refund will be issued to your original payment method.
- Contact and Support.\n\n""",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),TextSpan(
                      text: "Need assistance? ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),TextSpan(
                        text:
                            """\n\n- If you have any questions, concerns, or need further assistance, visit our "Contact Us" page to find our customer support channels, including email and phone support.\n\n""",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                  ])),
                ],
          ),
        ));
  }
}
