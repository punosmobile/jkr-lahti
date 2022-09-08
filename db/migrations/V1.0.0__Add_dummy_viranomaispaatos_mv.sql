create materialized view jkr.viranomaispaatokset as (
  with sample as (
      select * from (
          values (
            null::bigint,
            null::integer,
            null::text,
            null::text,
            null::smallint,
            null::date,
            null::text,
            null::text,
            null::date,
            null::int,
            null::date,
            null::text,
            null::text
          )
      ) as foo(
          id,
          kohde_id ,
          tapahtumalaji,
          asiatunnus ,
          paatospykala ,
          paatospvm,
          paatoslaji ,
          paatostulos ,
          paatosvoimassapvm ,
          jatetyyppi ,
          vireillepvm ,
          tilanne ,
          hakusanat
      )
  )
  select * from sample where 1=0
);
GRANT SELECT on jkr.viranomaispaatokset TO jkr_viewer;
