# ABAP-Pratice-5
Sap Abap'ta var olan veriyi loop komutu ile debug yaparak değiştirme
*&---------------------------------------------------------------------*
*& Report  ZRR_EGT_03
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

report zrr_egt_03.


DATA : gt_scarr TYPE TABLE OF scarr,
       gs_scarr TYPE scarr.

FIELD-SYMBOLS : <gfs_scarr> TYPE scarr.

START-OF-SELECTION.

SELECT * FROM scarr
  INTO TABLE gt_scarr.


LOOP AT gt_scarr ASSIGNING <gfs_scarr> .
        IF <gfs_scarr>-carrid eq 'AA'.
      <gfs_scarr>-carrname = ' EMRE KAYGILI '.
*      MODIFY gt_scarr FROM gs_scarr.
      ENDIF.
ENDLOOP.

  BREAK-POINT.




*data : gt_scarr type table of scarr,
*       gs_scarr type          scarr.
*
*FIELD-SYMBOLS: <gfs_scarr> TYPE scarr.
*
*start-of-selection.
*
*  select * from scarr
*    into table gt_scarr.
*
*
*    loop at gt_scarr ASSIGNING <gfs_scarr>.
*      IF <gfs_scarr>-carrid EQ 'LA'.
*        <gfs_scarr>-carrname = 'EMRE KAYGILI'.
*      ENDIF.
*      ENDLOOP.
*  break-point.


*INCLUDE zbk_egt_03_top.
*INCLUDE zbk_egt_03_frm.
*
*
*START-OF-SELECTION.
*
*PERFORM get_data.
*PERFORM set_fc.
*
*PERFORM set_layout.
*
*PERFORM display_alv.
*
*
*


*types : begin of gty_ekipman,
*          ekipman_id type zbk_ekipman_id,
*          ekipman_ad type zbk_ekipman_ad,
*          stok       type zbk_ekipman_stok,
*        end of gty_ekipman.
*
*data : gt_ekipman type table of gty_ekipman .
*
*
*start-of-selection.
*
*
*  select * from zbk_egt_0002 as z2
*    inner join zbk_egt_0003 as z3 on z3-ekipman_id eq z2-ekipman_id
*    into corresponding fields of table gt_ekipman .



*DATA : gt_table2 TYPE TABLE OF zrr_egt_03.
*
*START-OF-SELECTION.
*
*    SELECT * FROM zrr_egt_03
*      INTO TABLE  gt_table2.
*
*    BREAK-POINT.



*
*TYPES : BEGIN OF gty_ekipman ,
*        ekipman_id TYPE zbk_ekipman_id,
*        ekipman_ad TYPE zbk_ekipman_ad,
*        END OF gty_ekipman.
*
*
* DATA : gt_ekipman TYPE TABLE OF gty_ekipman.
*
*      START-OF-SELECTION.
*
*      SELECT * FROM zbk_egt_0002
*        INTO CORRESPONDING FIELDS OF TABLE gt_ekipman.
*        BREAK-POINT.
*

*TYPES : BEGIN OF gty_type1,
*  col1 TYPE char10 ,
*   col2 TYPE char10 ,
*   col3 TYPE char10 ,
*   col4 TYPE char10 ,
*  END OF gty_type1 .
*
*
*  DATA :  gs_st1 TYPE gty_type1,
*          gs_st2 TYPE gty_type1.
*
*
*START-OF-SELECTION.
*          gs_st1-col1 = 'aaaa'.
*          gs_st1-col1 = 'aaab'.
*          gs_st1-col1 = 'aaac'.
*          gs_st1-col1 = 'aaad'.
*
*  gs_st2 = gs_st1.
*
*   BREAK-POINT.

*DATA: gt_scarr TYPE TABLE OF scarr,
*      gt_scarr2  TYPE TABLE OF scarr.



*  TYPES: BEGIN OF gty_scarr,
*
*    MANDT TYPE S_MANDT ,
*     CARRID TYPE S_CARR_ID ,
*     CARRNAME TYPE S_CARRNAME ,
*     CURRCODE TYPE S_CURRCODE ,
*     URL TYPE S_CARRURL ,
*      END OF gty_scarr .
*
*DATA: gt_scarr TYPE TABLE OF gty_scarr.
*
*START-OF-SELECTION.
*
**SELECT carrid carrname FROM scarr
**  INTO TABLE gt_scarr.
**
**  SELECT carrid carrname FROM scarr
**  INTO CORRESPONDING FIELDS OF TABLE gt_scarr2.
*
*SELECT * FROM scarr
*   INTO TABLE gt_sv
*
*
*  BREAK-POINT.

