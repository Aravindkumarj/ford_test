*"* use this source file for your ABAP unit test classes

class zarj_Test definition for testing
  duration short
  risk level harmless
.
*?﻿<asx:abap xmlns:asx="http://www.sap.com/abapxml" version="1.0">
*?<asx:values>
*?<TESTCLASS_OPTIONS>
*?<TEST_CLASS>zarj_Test
*?</TEST_CLASS>
*?<TEST_MEMBER>f_Cut
*?</TEST_MEMBER>
*?<OBJECT_UNDER_TEST>ZARJ
*?</OBJECT_UNDER_TEST>
*?<OBJECT_IS_LOCAL/>
*?<GENERATE_FIXTURE/>
*?<GENERATE_CLASS_FIXTURE/>
*?<GENERATE_INVOCATION/>
*?<GENERATE_ASSERT_EQUAL/>
*?</TESTCLASS_OPTIONS>
*?</asx:values>
*?</asx:abap>
  private section.
    data:
      f_Cut type ref to zarj_new.  "class under test

    methods: deposit for testing.
    methods: set_Balance for testing.
    methods: withdraw_success for testing.
    methods: withdraw_fail for testing.
endclass.       "zarj_Test

class zarj_new definition local friends zarj_test.
class zarj_Test implementation.

  method deposit.



  endmethod.


  method set_Balance.



  endmethod.


  method withdraw_fail.
    DATA: TBALANCE TYPE DMBTR VALUE '0',
          TAMOUNT TYPE DMBTR VALUE '1000'.

    DATA TARJ TYPE REF TO ZARJ_NEW.
    CREATE OBJECT TARJ.
    TARJ->withdraw( TAMOUNT ).
    CL_AUNIT_ASSERT=>assert_equals( act = TARJ->BALANCE exp = TBALANCE ).

  endmethod.

  method withdraw_success.
    DATA: TBALANCE TYPE DMBTR VALUE '-1000',
          TAMOUNT TYPE DMBTR VALUE '1000'.

    DATA TARJ TYPE REF TO ZARJ_NEW.
    CREATE OBJECT TARJ.
    TARJ->withdraw( TAMOUNT ).
    CL_AUNIT_ASSERT=>assert_equals( act = TARJ->BALANCE exp = TBALANCE ).

  endmethod.


endclass.