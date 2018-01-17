--     /******************************************************************
--      *        Copyright (C) 2010-2018 Heirloom Computing Inc.         *
--      *                                                                *
--      *                        ALL RIGHTS RESERVED                     *
--      ******************************************************************
--      *                                                                *
--      * Property of Heirloom Computing Inc.  This software contains    *
--      * confidential and proprietary information of Heirloom Computing *
--      * Inc. and is made available solely pursuant to the terms of a   *
--      * software license agreement, which governs its use.             *
--      *                                                                *
--      * No disclosure, reproduction or use of any portion of these     *
--      * materials may be made without the express written consent of   *
--      * Heirloom Computing Inc.                                        *
--      *                                                                *
--      *****************************************************************/
-- PostgreSQL version
---------------------------------------------
-- Create the tables necessary for the TPCC
create table customer (
           c_w_id  decimal(9,0)           not null
 ,         c_d_id  decimal(9,0)           not null
 ,           c_id  decimal(9,0)           not null
 ,         c_last  char(16) default ' '  not null
 ,        c_first  char(16) default ' '  not null
 ,       c_middle  char(2) default ' '   not null
 ,     c_street_1  char(20) default ' '  not null
 ,     c_street_2  char(20) default ' '  not null
 ,         c_city  char(20) default ' '  not null
 ,        c_state  char(2) default ' '   not null
 ,          c_zip  char(9) default ' '   not null
 ,        c_phone  char(16) default ' '  not null
 ,        c_since  char(20) default ' '  not null
 ,       c_credit  char(2) default ' '   not null
 ,   c_credit_lim  decimal(12,2)          not null
 ,     c_discount  decimal(4,4)           not null
 ,      c_balance  decimal(12,2)          not null
 ,  c_ytd_payment  decimal(12,2)          not null
 ,  c_payment_cnt  decimal(4,0)           not null
 , c_delivery_cnt  decimal(4,0)           not null
 ,         c_data  varchar(500) default ' '  not null
)
;
---------------------------------------
create table district (
           d_w_id  decimal(9,0)           not null
 ,           d_id  decimal(9,0)           not null
 ,         d_name  char(10) default ' '  not null
 ,     d_street_1  char(20) default ' '  not null
 ,     d_street_2  char(20) default ' '  not null
 ,         d_city  char(20) default ' '  not null
 ,        d_state  char(2) default ' '   not null
 ,          d_zip  char(9) default ' '   not null
 ,          d_tax  decimal(4,4)           not null
 ,          d_ytd  decimal(12,2)          not null
 ,    d_next_o_id  decimal(9,0)           not null
)
;
---------------------------------------
create table history (
         h_c_w_id  decimal(9,0)           not null
 ,       h_c_d_id  decimal(9,0)           not null
 ,         h_c_id  decimal(9,0)           not null
 ,         h_date  char(20) default ' '  not null
 ,         h_d_id  decimal(9,0)           not null
 ,         h_w_id  decimal(9,0)           not null
 ,       h_amount  decimal(6,2)           not null
 ,         h_data  char(24) default ' '  not null
)
;
---------------------------------------
create table item (
             i_id  decimal(9,0)           not null
 ,        i_im_id  decimal(9,0)           not null
 ,         i_name  char(24) default ' '  not null
 ,        i_price  decimal(5,2)           not null
 ,         i_data  char(50) default ' '  not null
)
;
---------------------------------------
create table new_order (
          no_w_id  decimal(9,0)           not null
 ,        no_d_id  decimal(9,0)           not null
 ,        no_o_id  decimal(9,0)           not null
)
;
---------------------------------------
create table orders (
           o_w_id  decimal(9,0)           not null
 ,         o_d_id  decimal(9,0)           not null
 ,           o_id  decimal(9,0)           not null
 ,         o_c_id  decimal(9,0)           not null
 ,      o_entry_d  char(20) default ' '  not null
 ,   o_carrier_id  decimal(9,0)           null
 ,       o_ol_cnt  decimal(9,0)           not null
 ,    o_all_local  decimal(9,0)           not null
)
;
---------------------------------------
create table order_line (
          ol_w_id  decimal(9,0)           not null
 ,        ol_d_id  decimal(9,0)           not null
 ,        ol_o_id  decimal(9,0)           not null
 ,      ol_number  decimal(9,0)           not null
 ,        ol_i_id  decimal(9,0)           not null
 , ol_supply_w_id  decimal(9,0)           not null
 ,  ol_delivery_d  char(20) default ' '  null
 ,    ol_quantity  decimal(9,0)           not null
 ,      ol_amount  decimal(9,0)           not null
 ,   ol_dist_info  char(24) default ' '  not null
)
;
---------------------------------------
create table stock (
           s_w_id  decimal(9,0)           not null
 ,         s_i_id  decimal(9,0)           not null
 ,     s_quantity  decimal(4,0)           not null
 ,      s_dist_01  char(24) default ' '  not null
 ,      s_dist_02  char(24) default ' '  not null
 ,      s_dist_03  char(24) default ' '  not null
 ,      s_dist_04  char(24) default ' '  not null
 ,      s_dist_05  char(24) default ' '  not null
 ,      s_dist_06  char(24) default ' '  not null
 ,      s_dist_07  char(24) default ' '  not null
 ,      s_dist_08  char(24) default ' '  not null
 ,      s_dist_09  char(24) default ' '  not null
 ,      s_dist_10  char(24) default ' '  not null
 ,          s_ytd  decimal(8,0)           not null
 ,    s_order_cnt  decimal(4,0)           not null
 ,   s_remote_cnt  decimal(4,0)           not null
 ,         s_data  char(50) default ' '  not null
)
;
---------------------------------------
create table warehouse (
             w_id  decimal(9,0)           not null
 ,         w_name  char(10) default ' '  not null
 ,     w_street_1  char(20) default ' '  not null
 ,     w_street_2  char(20) default ' '  not null
 ,         w_city  char(20) default ' '  not null
 ,        w_state  char(2) default ' '   not null
 ,          w_zip  char(9) default ' '   not null
 ,          w_tax  decimal(4,4)           not null
 ,          w_ytd  decimal(12,2)          not null
)
;
---------------------------------------
commit work;
