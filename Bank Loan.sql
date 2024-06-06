select * from bank_loan_data;

select count(*) as Total_Loan_Application from bank_loan_data;


select count(*) as MTD_Total_Loan_Application from bank_loan_data
where MONTH(issue_date) = (select month(max(issue_date)) from bank_loan_data )

and year(issue_date) = (select year(max(issue_date)) from bank_loan_data);

select count(*) as PMTD_Total_Loan_Application from bank_loan_data
where MONTH(issue_date) = (select month(max(issue_date))-1 from bank_loan_data )

and year(issue_date) = (select year(max(issue_date)) from bank_loan_data);


select sum(loan_amount) as total_loan_amount from bank_loan_data;



select sum(loan_amount) as MTD_total_loan_amount from bank_loan_data
where MONTH(issue_date) = (select month(max(issue_date)) from bank_loan_data )
and year(issue_date) = (select year(max(issue_date)) from bank_loan_data);

select sum(total_payment) as total_amount_received from bank_loan_data;

select sum(total_payment) as MTD_total_amount_received from bank_loan_data
where MONTH(issue_date) = (select month(max(issue_date)) from bank_loan_data )
and year(issue_date) = (select year(max(issue_date)) from bank_loan_data);


select sum(total_payment) as PMTD_total_amount_received from bank_loan_data
where MONTH(issue_date) = (select month(max(issue_date))-1 from bank_loan_data )
and year(issue_date) = (select year(max(issue_date)) from bank_loan_data);


select round(avg(int_rate) * 100,3) as avg_interest_rate from bank_loan_data;


select round(avg(int_rate) * 100,3) as MTD_avg_interest_rate from bank_loan_data
where MONTH(issue_date) = (select month(max(issue_date)) from bank_loan_data )
and year(issue_date) = (select year(max(issue_date)) from bank_loan_data);


select round(avg(int_rate) * 100,3) as PMTD_avg_interest_rate from bank_loan_data
where MONTH(issue_date) = (select month(max(issue_date))-1 from bank_loan_data )
and year(issue_date) = (select year(max(issue_date)) from bank_loan_data);


select round(avg(dti) * 100,3) as avg_dti from bank_loan_data;

select round(avg(dti) * 100,3) as MTD_avg_dti from bank_loan_data
where MONTH(issue_date) = (select month(max(issue_date)) from bank_loan_data )
and year(issue_date) = (select year(max(issue_date)) from bank_loan_data);


select round(avg(dti) * 100,3) as PMTD_avg_dti from bank_loan_data
where MONTH(issue_date) = (select month(max(issue_date))-1 from bank_loan_data )
and year(issue_date) = (select year(max(issue_date)) from bank_loan_data);


select count(*) as no_of_good_loan
from bank_loan_data
where loan_status = 'Fully Paid'
or loan_status = 'Current';


select 
	(count(case when loan_status = 'Fully Paid'or loan_status = 'Current' then id end) * 100.0) 
	/count(*) as good_loan_percentage
from bank_loan_data;


select sum(loan_amount) as good_loan_amount
from bank_loan_data
where loan_status = 'Fully Paid'
or loan_status = 'Current';

select sum(total_payment) as good_loan_amount
from bank_loan_data
where loan_status = 'Fully Paid'
or loan_status = 'Current';


select count(*) as no_of_bad_loan
from bank_loan_data
where loan_status = 'Charged Off'


select 
	(count(case when loan_status = 'Charged Off' then id end) * 100.0) 
	/count(*) as bad_loan_percentage
from bank_loan_data;


select sum(loan_amount) as bad_loan_amount
from bank_loan_data
where loan_status = 'Charged Off'


select sum(total_payment) as bad_loan_amount
from bank_loan_data
where loan_status = 'Charged Off'


select loan_status, 
	count(id) as Loan_Count , 
	sum(loan_amount) as Loan_Amount_Funded, 
	sum(total_payment) as Loan_Amount_Received,
	avg(int_rate) * 100 as Average_Interest,
	avg(dti) * 100 as Average_dbi
from bank_loan_data
group by loan_status;


select 
	month(issue_date) as month_num,
	DATENAME(month,issue_date) as month_name,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	Sum(total_payment) as Total_Received_Amount
from bank_loan_data
group by month(issue_date), DATENAME(month,issue_date)
order by  month(issue_date);


select 
	address_state as state,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	Sum(total_payment) as Total_Received_Amount
from bank_loan_data
group by address_state
order by  address_state;



select 
	emp_length,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	Sum(total_payment) as Total_Received_Amount
from bank_loan_data
group by emp_length
order by  emp_length;


select 
	purpose,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	Sum(total_payment) as Total_Received_Amount
from bank_loan_data
group by purpose
order by  purpose;


select 
	home_ownership,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	Sum(total_payment) as Total_Received_Amount
from bank_loan_data
group by home_ownership
order by  home_ownership;