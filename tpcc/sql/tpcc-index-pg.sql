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
-- Alter tables to add primary keys
-- Apply these after the tables have been loaded to speed load time
create index customer_idx on customer 
    (c_w_id, c_d_id, c_id);
---------------------------------------
create index district_idx on district 
    (d_w_id, d_id);
---------------------------------------
create index item_idx on item 
    (i_id);
---------------------------------------
create index new_order_idx on new_order 
    (no_w_id, no_d_id, no_o_id);
---------------------------------------
create index orders_idx on orders 
    (o_w_id, o_d_id, o_id);
---------------------------------------
create index order_line_idx on order_line 
    (ol_w_id, ol_d_id, ol_o_id, ol_number);
---------------------------------------
create index stock_idx on stock 
    (s_w_id, s_i_id);
---------------------------------------
create index warehouse_idx on warehouse 
    (w_id);
---------------------------------------
commit work;
