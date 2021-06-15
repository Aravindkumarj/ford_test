class ZARJ_NEW definition
  public
  final
  create public .

public section.

  methods DEPOSIT
    importing
      value(AMOUNT) type DMBTR
    returning
      value(NEW_BALANCE) type DMBTR .
  methods SET_BALANCE
    importing
      value(NEW_BALANCE) type DMBTR .
  methods WITHDRAW
    importing
      value(AMOUNT) type DMBTR
    returning
      value(NEW_BALANCE) type DMBTR
    exceptions
      INSUFFICIENT_FUNDS .