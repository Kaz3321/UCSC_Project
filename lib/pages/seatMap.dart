import 'package:book_my_seat/book_my_seat.dart';

List<List<SeatState>> seatMap = [
      [
        // row 1

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,

        SeatState.empty,
        SeatState.empty,

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
      ],
      [
        // row 2

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,

        SeatState.empty,
        SeatState.empty,

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
      ],
      [
        // row 3

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,

        SeatState.empty,
        SeatState.empty,

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.sold,
        SeatState.sold,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
      ],
      [
        // row 4

        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,

        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
      ],
      [
        // row 5

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.sold,
        SeatState.sold,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,

        SeatState.empty,
        SeatState.empty,

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.sold,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
      ],
      [
        // row 6

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.sold,
        SeatState.sold,
        SeatState.unselected,
        SeatState.unselected,

        SeatState.empty,
        SeatState.empty,

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
      ],
      [
        // row 7

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.sold,
        SeatState.sold,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,

        SeatState.empty,
        SeatState.empty,

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
      ],
      [
        // row 8

        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,

        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
        SeatState.empty,
      ],
      [
        // row 9

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,

        SeatState.empty,
        SeatState.empty,

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
      ],
      [
        // row 10

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,

        SeatState.empty,
        SeatState.empty,

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
      ],
      [
        // row 11

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,

        SeatState.empty,
        SeatState.empty,

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
      ],
      [
        // row 12

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,

        SeatState.empty,
        SeatState.empty,

        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.unselected,
        SeatState.disabled,
        SeatState.disabled,
      ],
    ];