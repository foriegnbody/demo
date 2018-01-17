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
-- delete froms
delete from customer;
delete from district;
delete from history;
delete from item;
delete from new_order;
delete from orders;
delete from order_line;
delete from stock;
delete from warehouse; 
------------------------------------------------------------
commit work;