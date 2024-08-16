-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: tasklance
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping routines for database 'tasklance'
--
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `AddTaskerSkills`(
	v_TaskerID int ,
	v_TaskSubCategoryID int 
)
BEGIN
	
		INSERT into taskerskill(TaskerID, TaskSubCategoryID)
		VALUES(v_TaskerID,v_TaskSubCategoryID);

		
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_city`(
	p_city_name varchar(50),
	out p_city_id int 
)
BEGIN
	declare v_city_id int DEFAULT 0;

	select cityid into v_city_id from city where city_name = p_city_name;

	if v_city_id > 0 THEN
		set p_city_id = v_city_id;
	ELSE
		insert into city(city_name)
		values(p_city_name);

		set p_city_id = last_insert_id();
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_donor`(
	p_email varchar(20), 
	p_name varchar(20), 
	p_mobile varchar(12), 
	p_address varchar(500)
	
)
BEGIN
	
		INSERT into donor(ProfileName,EmailID, Phone, address,CreatedOn)
		           VALUES(p_name,p_email,p_mobile,p_address,now());

		

		

		
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_task`(
	p_task_title varchar(300),
	p_sub_cat_id int, 
	p_task_provider_id int,
	p_task_desc varchar(2000), 
	p_eta varchar(30), 
	p_budget varchar(30)
)
BEGIN
	declare project_id int DEFAULT 0;

	insert into projects(ProjectTitle, TaskSubCategoryID,TaskProviderID,ProjectDescription,IsActive,
	CreatedOn,ETA,budget)
	Values(p_task_title,p_sub_cat_id,p_task_provider_id,p_task_desc,1,now(),p_eta,p_budget);

	set project_id = last_insert_id();

	insert into projectdetails(projectID, projectStatusID,IsActive)
	values(project_id,1,1);

	select project_id as project_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_tasker`(
	p_email varchar(50), 
	p_name varchar(30), 
	p_mobile varchar(12), 
	p_disabiltyId int,
	p_percentage int, 
	p_DOB DATETIME, 
	p_city varchar(20), 
	p_address varchar(500),
	p_nationality varchar(20),
	p_aadharNo varchar(50),
	p_qualification varchar(100),
	p_experience varchar(20),
	p_disability varchar(50),
	p_categoryId int, 
	p_subCategoryId int
)
BEGIN
	DECLARE v_count int default 0;
    DECLARE v_TaskerID int;

	select count(*) into v_count from tasker where Phone = p_mobile;

	if v_count > 0 THEN
		select 0 as IsRegistered;
	else
		INSERT into tasker(EmailID, Phone, CreatedOn,IsActive, TaskSubCategoryID, 
                           TaskCategoryID)
		VALUES(p_email,p_mobile,now(),1,p_subCategoryId,p_categoryId);

        Set v_TaskerID=last_insert_id();

        INSERT into taskerskill(TaskerID, TaskSubCategoryID)
		VALUES(v_TaskerID,p_subCategoryId);

		call add_city(p_city,@cityId);

		INSERT INTO TaskerProfile(TaskerID,ProfileName,TotalExperience,
			Education,IsActive,DisabilityType,DisabilityPercentage,
			date_of_birth,city_id,address,aadharNo,qualification,disability_cert_no)
		VALUES(v_TaskerID,p_name,p_experience,p_qualification,1,p_disabiltyId,
			p_percentage,p_DOB,@cityId,p_address,p_aadharNo,p_qualification,
            p_disability);

		select 1 as IsRegistered;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_task_provider`(
	p_email_id varchar(100),
	p_company_name varchar(100)
)
BEGIN
	declare v_task_provider_id int DEFAULT 0;

	select TaskProviderID into v_task_provider_id from taskprovider where EmailID = p_email_id;

	if v_task_provider_id > 0 THEN
		select v_task_provider_id as task_provider_id;
	ELSE
		insert into taskprovider(EmailID, CompanyName, CreatedOn, IsActive)
		values(p_email_id, p_company_name, now(), 1);

		select last_insert_id() as task_provider_id;
	end if;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `GetRecentTasks`()
BEGIN
	select pc.projectid,pc.projecttitle,t.taskerId,
           pc.Projecttitle
	from tasker as t
	-- join TaskerProfile as tp on t.taskerid=tp.taskerid
	join projects as pc on pc.tasksubcategoryid=t.tasksubcategoryid
    join projectdetails as pd on  pd.projectid=pc.projectid
	where pd.projectstatusid=4  -- Completed
	order by pc.projectid desc
    limit 3;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `GetRecommendedTaskers`(
	subcatid int
)
BEGIN
	declare varprojectid int DEFAULT 0;

	select ProjectID into varprojectid from projects 
	where TaskSubCategoryID = subcatid
	order by projectid desc limit 1;
	
	select pc.projectid,pc.projecttitle,t.taskerId,t.lastlogindate,
           ifnull(p.Projecttitle,'Fresher') LastProject, tp.ProfileName
	from tasker as t
	join TaskerProfile as tp on t.taskerid=tp.taskerid
	join projects as pc on pc.tasksubcategoryid=t.tasksubcategoryid
	-- join tasksubcategory as ts on ts.taskcategoryid=t.TaskCategoryID
	left join projectdetails as pd on pd.taskerid=tp.taskerid and pd.projectid=tp.LastProjectId
	left join projects as p on pd.projectid=p.projectid
	where pc.projectid=varprojectid;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `GetTaskCategoryAndSubCategory`(CategoryId INT)
BEGIN
select 
    TaskSubCategoryID, SubCategoryName
from
    tasksubcategory as ts
        join
    taskcategory as t ON t.TaskCategoryID = ts.TaskCategoryID
where
    IsActive = 1
        AND TaskCategoryID = CategoryId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `gettaskers`(
	
)
BEGIN
	

	select t.TaskerID as TaskerID,
    CategoryName as TaskCategory ,SubCategoryName as SubCategory,Education, 
    DATE_FORMAT(date_of_birth, '%d/%m/%Y')as date_of_birth
	from tasker as t
	join TaskerProfile as tp on t.taskerid=tp.taskerid
	-- join projects as pc on pc.tasksubcategoryid=t.tasksubcategoryid
	join tasksubcategory as ts on ts.taskcategoryid=t.TaskCategoryID
    join taskcategory as tc on tc.TaskCategoryID=ts.TaskCategoryID
	;

	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `gettasklancers`()
BEGIN

select *
from tempTasker
order by taskerid desc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `GetTaskProviderData`(vartaskproviderid int)
BEGIN
	select pc.taskproviderid,
	   ps.projectstatus,
	   count(pc.projectid) as Projects
	from taskprovider as t
	-- join TaskerProfile as tp on t.taskerid=tp.taskerid
	join projects as pc on pc.taskproviderid=t.taskproviderid
    join projectdetails as pd on  pd.projectid=pc.projectid
    join projectstatuses as ps on ps.projectstatusid =pd.projectstatusid
	where t.taskproviderid=vartaskproviderid
    group by pc.taskproviderid,ps.projectstatus;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_city`(
	
)
BEGIN
	

	select * from   city ;

	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_disability_type`()
BEGIN
	select * from disabilitytype where IsActive=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_skills`()
BEGIN
	select * from skills where IsActive=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_tasker_project_detail`(
	p_tasker_id int,
	p_project_id int
)
BEGIN
insert into tasker_project_mapping(tasker_id, project_id,is_active,createon,taskerresponse)
values(p_tasker_id,p_project_id,is_active,now(),0);

select 
    tp.ProfileName as taskerName, t.EmailID as taskeremail
from
    tasker t
        inner join
    TaskerProfile tp ON t.taskerid = tp.taskerid
where
    t.taskerid = p_tasker_id;


select 
    ifnull(tp.Phone, tp.EmailID) as taskProviderMobile,
    p.budget as taskRate,
    p.ProjectDescription as taskDesc,
	tp.EmailID,
    tsc.SubCategoryName,
    tc.CategoryName,
    tp.Companyname
from
    projects p
        inner join
    taskprovider tp ON tp.TaskProviderID = p.TaskProviderID
        inner join
    tasksubcategory tsc ON p.TaskSubCategoryID = tsc.TaskSubCategoryID
inner join
    taskcategory tc ON tc.TaskCategoryID = tsc.TaskCategoryID
where
    p.ProjectID = p_project_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_task_category`(
p_is_active VARCHAR(10)
)
BEGIN
	select * from taskcategory where find_in_set(isactive,p_is_active);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_task_rate`(
	p_subcat_id int
)
BEGIN

Declare varDaily float DEFAULT 6.4; -- (8*0.8) 8 Hours and 20% discount
Declare varWeekly float DEFAULT 28.0; -- (5*8*0.7) % Days in week 8 Hours and 30% discount
Declare varMonthly float DEFAULT 105.6; -- (22*8*0.6) 22 days and 40% discount


/*
	select tasksubcategoryid,taskrate,
CONCAT(ifnull(HostUrl,''),ifnull(ImageUrl,'')) AS ImageUrl,AdUrl from tasksubcategory 
    where IsActive =1 and tasksubcategoryid = p_subcat_id;

*/

select tasksubcategoryid,
       tr.EntryLevel as taskrate,
       CEIL(tr.EntryLevel*varDaily) as Dailyrate,
       CEIL(tr.EntryLevel*varWeekly) as Weeklyrate,
       CEIL(tr.EntryLevel*varMonthly) as Monthlyrate,
       CONCAT(ifnull(HostUrl,''),ifnull(ImageUrl,'')) AS ImageUrl,
       AdUrl 
from tasksubcategory as ts 
join taskrates as tr on ts.taskrateid=tr.taskrateid
where IsActive =1 
and tasksubcategoryid = p_subcat_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_task_sub_category`(
CategoryId INT,
p_is_active VARCHAR(10)
)
BEGIN
	
	select TaskSubCategoryID, SubCategoryName
from tasksubcategory 
where TaskCategoryID = CategoryId and find_in_set(isactive,p_is_active);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `potentialtaskers`()
BEGIN

select *
from tempTasker
order by taskerid desc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `save_tasker_response`(
	p_tasker_id int,
	p_project_id int
)
BEGIN
	declare tasker_response_count int default 0;
	select 
		count(*)
	into tasker_response_count from
		tasker_project_mapping
	where
		tasker_id = p_tasker_id
			and project_id = p_project_id
			and taskerresponse = 1;

	if tasker_response_count >= 3 then
		update tasker_project_mapping 
		set 
			taskerresponse = 1,
			responsedate = now()
		where
			tasker_id = p_tasker_id
				and project_id = p_project_id;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ShowRecommendedTaskers`(
	varprojectid int
)
BEGIN
	
	select 
		pc.projectid,
		pc.projecttitle,
		t.taskerId,
		t.lastlogindate,
		ifnull(p.Projecttitle, 'Fresher') LastProject,
		tp.ProfileName
	from
		tasker as t
			join
		TaskerProfile as tp ON t.taskerid = tp.taskerid
			join
		projects as pc ON pc.tasksubcategoryid = t.tasksubcategoryid
			left join
		projectdetails as pd ON pd.taskerid = tp.taskerid
			and pd.projectid = tp.LastProjectId
			left join
		projects as p ON pd.projectid = p.projectid
	where
		pc.projectid = varprojectid;

	select 
		SubCategoryName
	from
		tasksubcategory
	where
		tasksubcategoryid = (select 
				TaskSubCategoryID
			from
				projects
			where
				projectid = varprojectid);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-07  7:44:49
