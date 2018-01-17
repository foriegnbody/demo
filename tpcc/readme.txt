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


Readme for the Heirloom TPC-C benchmark running under Heirloom PaaS.

Benchmark can operate in SQL or VSAM mode, where VSAM may utilize the
VSAM to SQL bridge to base the VSAM files in a relational database.

These instructions set up the pure SQL mode, programs "sql*.cbl".

Requirements
    1. Eclipse, Elastic COBOL and Elastic Transaction Platform
    2. SQL 92 compliant database
    
Project setup/configuration (inside Eclipse):
    1. Create TPCC project as an "Elastic COBOL Project" with the 
       "Elastic Transaction Platform" Compatibility setting.
       1.1 Regenerate copybooks and HTML files from BMS files.
    2. Add JDBC driver to Project > Properties > Java Build Path > Libraries >
       Add External Jar.
    3. Create TPCC-Deploy project as an "ETP Project".
    4. Check the ETP Deployment Properties are set as follows:
       4.1 SYSID is TPCC
       4.2 Transaction names mapping to the programs:
           delv     sqldelv
           init     tpccbmsm
           load     sqlload
           nord     sqlload
           ords     sqlords
           paym     sqlpaym
           stkl     sqlstkl
       4.3 The SQL connection information matches your database configuration
           (i.e. SQL driver, login and connection URL information).
    5. Project > Properties > COBOL Compiler Settings > SQL > JDBC > JDBC 4.x.
       
Create database tables and indexes. For example, with PostgreSQL:
    1. Load and execute sql/tpcc-create-pg.sql using a db admin tool (e.g.
       pgadmin or squirrel) to create the tables.
    2. Load and execute sql/tpcc-index-pg.sql using a db admin tool to create
       the indexes.

Setup App Server & deploy the project
    1. Window > Show View > Other > Server > Add Tomcat 8.
    2. Right-click Tomcat 8 in Server window > Open > Select "Use Tomcat
       Installation" and save.
    3. Use ETP Deploy Wizard to deploy .war file (to Tomcat 8+ webapps folder).
   
Run
    1. http://localhost:8080/TPCC/servlet
    2. Load the test database
       2.1 Warehouses 1, S for Small database, D for DB, Y to Erase, Y to Load
       2.2 PF7 (to start load process).
    3. Or, load the production database 
       3.1 Warehouses 10, L for Large database, D for DB, Y to Erase, Y to Load
       3.2 PF7 (to start load process)
    4. Use PF1..PF5 to run the 5 transaction types

Build & Test the driver
    1. cd tpcc-driver/src
    2. make (or put in an Eclipse Java project)
    3. cd out
    4. java -Dprop=../../run/tpcc.conf jTPCC
