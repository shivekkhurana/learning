show tables;
select url from jd_category_edges join jd_category_nodes using(id) where parent_id = 0;
