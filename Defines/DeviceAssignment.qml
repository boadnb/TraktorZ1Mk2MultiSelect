pragma Singleton

import QtQuick 2.0

QtObject {
  // Constants to describe deck pair assignments
  readonly property int decks_a_b: 0
  readonly property int decks_c_d: 1
  readonly property int decks_a_c: 2
  readonly property int decks_d_b: 3
  readonly property int decks_c_a: 4
  readonly property int decks_b_d: 5

  function leftDeckIdx(assignment)
  {
    switch (assignment)
    {
      case decks_a_b:
        return 1; // A

      case decks_c_d:
        return 3; // C

      case decks_a_c:
        return 1; // A

      case decks_d_b:
        return 4; // D

      case decks_c_a:
        return 3; // C

      case decks_b_d:
        return 2; // B
    }
  }

  function rightDeckIdx(assignment)
  {
    switch (assignment)
    {
      case decks_a_b:
        return 2; // B

      case decks_c_d:
        return 4; // D

      case decks_a_c:
        return 3; // C

      case decks_d_b:
        return 2; // B

      case decks_c_a:
        return 1; // A

      case decks_b_d:
        return 4; // D
    }
  }
} 
