import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool Like = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weapons"),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, Colors.black])),
            width: double.infinity,
            height: double.infinity,
            child: Column(children: [
              Flexible(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child:
                            Image.asset('assets/valo.png', fit: BoxFit.cover),
                      ),
                      Align(
                        alignment: Alignment(0.8, 0),
                        child: ElevatedButton.icon(
                            onPressed: () {
                              setState(() {
                                Like = !Like;
                              });
                            },
                            icon: Icon(Icons.favorite,
                                color: (Like == false)
                                    ? Colors.yellow
                                    : Colors.grey),
                            label: Text(''),
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(15),
                                minimumSize: const Size.fromRadius(20),
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)))),
                      )
                    ]),
                  )),
              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/vandal.jfif',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/phantom.jfif',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/sheriff.jfif',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child:
                              Image.asset('assets/OP.jfif', fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  child: const Center(
                      child: Text(
                    "Summary",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
              Flexible(
                flex: 4,
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Container(
                      child: const Center(
                        child: Text(
                            "Guns have limited amounts of ammo but come with reserve magazines. Bullets deal different amounts of damage depending on the gun, the body part they hit, and the distance between the shooter and the target. Each gun deals a set amount of damage to an enemys body at its shortest range and then uses multipliers on this value to calculate the damage it will deal to the head and legs at close range and all body parts at further ranges. Resulting numbers with a decimal value are rounded down to the next integer value. Enemies hit by bullets will also be tagged with a 72.5% slow for a brief period. Shotgun pellets will only apply a 30% slow if they tag an enemy beyond 10 meters. Guns are also affected by accuracy spreads. Most guns first shot will have a spread value, meaning there is a possibility the shot fired will not make a perfect hit at the target under the players crosshair. The higher the spread value, the more likely the shot will deviate from the crosshair. The only guns with with no spread for their first shot are the Guardian, Marshal, and Operator, and this only applies for the weapon's ADS or scoped mode. As players fire more continuous shots from their gun, its spread will continue to increase from its first shot value, up to a maximum value (the exception is the Ares, which becomes more accurate whilst it is continuously fired, down to a minimum value). In order for the gun's spread value to fully return back to its first shot value, the gun must go through a recovery period during which it isn't being used to shoot. Shooting whilst crouched will reduce spread values. In general, ADS modes on guns that have them will have lower spread values (this is always the case for first shots), though at maximum spread for some full-auto weapons it is actually primary fire that has can have slightly lower spread values. As well as spread values associated with firing the gun, accuracy penalties will be applied additively if the player is moving whilst shooting. The faster the movement, the higher the penalty added (i.e. crouch moving, then walking, then running, then airborne, from smallest to highest penalty). Movement speed penalties scale up to their max value as agents accelerate from standing still to moving, and fall off as agents decelerate from moving back to standing still. Changes in movement speed unrelated to agent acceleration/deceleration, such as combat stims or slows, do not affect movement penalties. Whilst each gun has unique spread values for shooting, movement penalties are usually shared by guns of the same class instead (the exception is Sidearms, likely due to the variety of weapons within the class). All guns will then also gain an additional 7° spread upon landing on the ground after being airborne, lasting for 0.225 seconds. Weapons can be purchased by Agents using creds during the pre-round sequence. Each Agent is equipped with a Knife and the Classic sidearm for free by default. Agents will keep the weapons they purchase through each round until they die. Weapons can also be picked up off the ground from deceased players, both friendly and hostile, which will carry on with the player into the next round.",
                            style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
            ])));
  }
}
