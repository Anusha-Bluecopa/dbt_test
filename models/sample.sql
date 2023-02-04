with
  data1 as (select customer_name as name1,customer_id as id1 from `dev-363813.dev_local_ds.Sheet1`),
      data2 as (select customer_name as name2,customer_id as id2 from `dev-363813.test_sheets.Sheet1`),
      final_data as (select data1.id1 as name1,data2.name2 as name2 from data1 join data2 on data1.id1 = data2.id2)
  select * from final_data