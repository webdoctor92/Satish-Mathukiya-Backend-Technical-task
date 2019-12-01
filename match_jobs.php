<?php
/* file include for database connection */
include("config.php");

$job_search_params=$_REQUEST;

// form is blank then redirect to home page again
if(empty($job_search_params)){
    header("Location:index.php");
}

$where_array=array();
$where="";
$columns=array();
foreach($job_search_params as $key=>$job_search_param){
    $columns[]=$key;
    if(is_array($job_search_param)){
        $where_array[]=$key ." in('".implode("','",$job_search_param)."')";  
    }
    else{
        $where_array[]=$key ." ='".$job_search_param."'";  
    }  
    
}

$where=implode(" and ", $where_array);

$jobs_search_sql="select c.company_name,".implode(',',$columns)." from company as c  
inner join company_needs as cn on cn.company_id=c.id  where ".$where;
//echo $jobs_search_sql;
$result = mysqli_query($con,$jobs_search_sql);



$match_jobs=array();
while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
    foreach($columns as $column){
        if(!in_array($row[$column],$match_jobs[$row['company_name']][$column])){
            $match_jobs[$row['company_name']][$column][]=$row[$column];
        }
        
    }
}
// Free result set
mysqli_free_result($result);

// Close database connection
mysqli_close($con);

$company_li="<ul>";

foreach($match_jobs as $company_name=>$match_job){
    $company_li_array=array();
    $company_li.="<li><b>\"".$company_name."\"</b> requires ";
    foreach($columns as $column){
        if($match_job[$column][0]!='yes' && $match_job[$column][0]!='no' && $match_job[$column][0]!=''){
            $company_li_array[]=implode(" or ", $match_job[$column]);
        } 
        else{
            if($match_job[$column][0]=='yes'){
                $company_li_array[]=ucwords(str_replace('_',' ',$column));
            }
        }
        
    }
    $company_li.=implode(" and ",$company_li_array);
    $company_li.="</li>";
}
if(empty($match_jobs)){
    $company_li.="<li><b>No Job Matched on Selected Criteria.</b></li>";
}
$company_li.='<div>
<button type="button" onclick="location.href=\'index.php\'" value="Back">Back</button>  
</div>';

$company_li.="</ul>";

echo $company_li;
?>