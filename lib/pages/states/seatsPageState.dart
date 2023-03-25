import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/pages/seatMap.dart';
import 'package:project/pages/seatsPage.dart';
import 'package:book_my_seat/book_my_seat.dart';

class SeatsPageState extends State<SeatsPage> {
  Set<SeatNumber> selectedSeats = Set();
  late List<List<SeatState>> currentseats;

  @override
  void initState() {
    super.initState();
    currentseats = seatMap;
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          const Text("Theatre Screen this side"),
          const SizedBox(
            height: 16,
          ),
          Flexible(
            child: SizedBox(
              width: double.maxFinite,
              height: 500,
              child: SeatLayoutWidget(
                onSeatStateChanged: (rowI, colI, seatState) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: seatState == SeatState.selected
                          ? Text("Selected Seat[$rowI][$colI]")
                          : Text("De-selected Seat[$rowI][$colI]"),
                    ),
                  );
                  if (seatState == SeatState.selected) {
                    selectedSeats.add(SeatNumber(rowI: rowI, colI: colI));
                  } else {
                    selectedSeats.remove(SeatNumber(rowI: rowI, colI: colI));
                  }
                },
                stateModel: SeatLayoutStateModel(
                  pathDisabledSeat: 'assets/svg_disabled_bus_seat.svg',
                  pathSelectedSeat: 'assets/svg_selected_bus_seats.svg',
                  pathSoldSeat: 'assets/svg_sold_bus_seat.svg',
                  pathUnSelectedSeat: 'assets/svg_unselected_bus_seat.svg',
                  rows: 12,
                  cols: 20,
                  seatSvgSize: 20,
                  currentSeatsState: currentseats,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/svg_disabled_bus_seat.svg',
                      width: 15,
                      height: 15,
                    ),
                    const Text('Disabled')
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/svg_sold_bus_seat.svg',
                      width: 15,
                      height: 15,
                    ),
                    const Text('Sold')
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/svg_unselected_bus_seat.svg',
                      width: 15,
                      height: 15,
                    ),
                    const Text('Available')
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/svg_selected_bus_seats.svg',
                      width: 15,
                      height: 15,
                    ),
                    const Text('Selected by you')
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                for (int i = 0; i < selectedSeats.length; i++) {
                  print("row: ${selectedSeats.elementAt(i).rowI}");
                  print("col: ${selectedSeats.elementAt(i).colI}");
                  print(
                      "before state: ${currentseats[selectedSeats.elementAt(i).rowI][selectedSeats.elementAt(i).colI]}");

                  currentseats[selectedSeats.elementAt(i).rowI]
                      [selectedSeats.elementAt(i).colI] = SeatState.sold;
                      
                  print(
                      "after state: ${currentseats[selectedSeats.elementAt(i).rowI][selectedSeats.elementAt(i).colI]}");
                }
              });
            },
            child: const Text('Show my selected seat numbers'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => const Color(0xFFfc4c4e)),
            ),
          ),
          const SizedBox(height: 12),
          Text(selectedSeats.join(" , "))
        ],
      ),
    );
  }
}

class SeatNumber {
  final int rowI;
  final int colI;

  const SeatNumber({required this.rowI, required this.colI});

  @override
  bool operator ==(Object other) {
    return rowI == (other as SeatNumber).rowI &&
        colI == (other as SeatNumber).colI;
  }

  @override
  int get hashCode => rowI.hashCode;

  @override
  String toString() {
    return '[$rowI][$colI]';
  }
}
