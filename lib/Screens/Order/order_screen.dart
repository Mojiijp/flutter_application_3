import 'package:flutter/material.dart';
import 'package:flutter_application_3/Screens/Order/order_list_menu_coffee.dart';
import 'package:flutter_application_3/Screens/Order/order_list_menu_tea.dart';
import 'package:flutter_application_3/components/section_title.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SectionTitle(
                title: "Type of Drinks",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.25,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const OrderListMenuCoffee();
                                  },
                                )
                              );
                            },
                            child: const Image(
                              image: AssetImage("assets/images/americano.png"),
                            ),
                          ),
                        ),
                        const Text("Coffee")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.25,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const OrderListMenuTea();
                                  },
                                )
                              );
                            },
                            child: const Image(
                              image: AssetImage("assets/images/tea.png"),
                            ),
                          ),
                        ),
                        const Text("tea")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.25,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Image(
                              image: AssetImage("assets/images/milk.png"),
                            ),
                          ),
                        ),
                        const Text("Milk")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SectionTitle(
                title: "New Drinks!",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.25,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Image(
                              image: AssetImage("assets/images/americano.png"),
                            ),
                          ),
                        ),
                        const Text("Coffee")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.25,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Image(
                              image: AssetImage("assets/images/tea.png"),
                            ),
                          ),
                        ),
                        const Text("tea")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.25,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Image(
                              image: AssetImage("assets/images/milk.png"),
                            ),
                          ),
                        ),
                        const Text("Milk")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SectionTitle(
                title: "Recommented Drinks!",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.25,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Image(
                              image: AssetImage("assets/images/americano.png"),
                            ),
                          ),
                        ),
                        const Text("Coffee")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.25,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Image(
                              image: AssetImage("assets/images/tea.png"),
                            ),
                          ),
                        ),
                        const Text("tea")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.25,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Image(
                              image: AssetImage("assets/images/milk.png"),
                            ),
                          ),
                        ),
                        const Text("Milk")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
