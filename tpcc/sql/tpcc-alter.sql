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
-- 
-- Alter tables to add primary keys
-- Apply these after the tables have been loaded to speed load time
alter table customer add constraint cust_pkey primary key 
    (c_w_id, c_d_id, c_id);
---------------------------------------
alter table district add constraint dist_pkey primary key 
    (d_w_id, d_id);
---------------------------------------
alter table item add constraint item_pkey primary key 
    (i_id);
---------------------------------------
alter table new_order add constraint nord_pkey primary key 
    (no_w_id, no_d_id, no_o_id);
---------------------------------------
alter table orders add constraint ord_pkey primary key 
    (o_w_id, o_d_id, o_id);
---------------------------------------
alter table order_line add constraint ordl_pkey primary key 
    (ol_w_id, ol_d_id, ol_o_id, ol_number);
---------------------------------------
alter table stock add constraint stck_pkey primary key 
    (s_w_id, s_i_id);
---------------------------------------
alter table warehouse add constraint whse_pkey primary key 
    (w_id);
---------------------------------------
commit work;