-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "ALTER EXTENSION age UPDATE TO '0.4.0'" to load this file. \quit

DROP FUNCTION ag_catalog.agtype_any_add(agtype, smallint) CASCADE;
--DROP OPERATOR + (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_add(smallint, agtype) CASCADE;
--DROP OPERATOR + (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_add(agtype, integer) CASCADE;
--DROP OPERATOR + (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_add(integer, agtype) CASCADE;
--DROP OPERATOR + (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_add(agtype, bigint) CASCADE;
--DROP OPERATOR + (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_add(bigint, agtype) CASCADE;
--DROP OPERATOR + (bigint, agtype);

CREATE FUNCTION ag_catalog.agtype_bigint_add(agtype, bigint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_bigint_add,
  LEFTARG = agtype,
  RIGHTARG =  bigint,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_bigint_add(bigint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_bigint_add,
  LEFTARG = bigint,
  RIGHTARG =  agtype,
  COMMUTATOR = +
);

DROP FUNCTION ag_catalog.agtype_any_sub(agtype, smallint) CASCADE;
--DROP OPERATOR - (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_sub(smallint, agtype) CASCADE;
--DROP OPERATOR - (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_sub(agtype, integer) CASCADE;
--DROP OPERATOR - (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_sub(integer, agtype) CASCADE;
--DROP OPERATOR - (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_sub(agtype, bigint) CASCADE;
--DROP OPERATOR - (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_sub(bigint, agtype) CASCADE;
--DROP OPERATOR - (bigint, agtype);
DROP FUNCTION ag_catalog.agtype_any_sub(agtype, real) CASCADE;
--DROP OPERATOR - (agtype, real);
DROP FUNCTION ag_catalog.agtype_any_sub(real, agtype) CASCADE;
--DROP OPERATOR - (real, agtype);
DROP FUNCTION ag_catalog.agtype_any_sub(agtype, double precision) CASCADE;
--DROP OPERATOR - (agtype, double precision);
DROP FUNCTION ag_catalog.agtype_any_sub(double precision, agtype) CASCADE;
--DROP OPERATOR - (double precision, agtype);
DROP FUNCTION ag_catalog.agtype_any_sub(agtype, numeric) CASCADE;
--DROP OPERATOR - (agtype, numeric);
DROP FUNCTION ag_catalog.agtype_any_sub(numeric, agtype) CASCADE;
--DROP OPERATOR - (numeric, agtype);

CREATE FUNCTION ag_catalog.agtype_bigint_sub(agtype, bigint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_bigint_sub,
  LEFTARG = agtype,
  RIGHTARG =  bigint
);

CREATE FUNCTION ag_catalog.agtype_bigint_sub(bigint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_bigint_sub,
  LEFTARG = bigint,
  RIGHTARG =  agtype
);

DROP FUNCTION ag_catalog.agtype_any_mul(agtype, smallint) CASCADE;
--DROP OPERATOR * (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_mul(smallint, agtype) CASCADE;
--DROP OPERATOR * (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_mul(agtype, integer) CASCADE;
--DROP OPERATOR * (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_mul(integer, agtype) CASCADE;
--DROP OPERATOR * (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_mul(agtype, bigint) CASCADE;
--DROP OPERATOR * (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_mul(bigint, agtype) CASCADE;
--DROP OPERATOR * (bigint, agtype);
DROP FUNCTION ag_catalog.agtype_any_mul(agtype, real) CASCADE;
--DROP OPERATOR * (agtype, real);
DROP FUNCTION ag_catalog.agtype_any_mul(real, agtype) CASCADE;
--DROP OPERATOR * (real, agtype);
DROP FUNCTION ag_catalog.agtype_any_mul(agtype, double precision) CASCADE;
--DROP OPERATOR * (agtype, double precision);
DROP FUNCTION ag_catalog.agtype_any_mul(double precision, agtype) CASCADE;
--DROP OPERATOR * (double precision, agtype);
DROP FUNCTION ag_catalog.agtype_any_mul(agtype, numeric) CASCADE;
--DROP OPERATOR * (agtype, numeric);
DROP FUNCTION ag_catalog.agtype_any_mul(numeric, agtype) CASCADE;
--DROP OPERATOR * (numeric, agtype);

CREATE FUNCTION ag_catalog.agtype_bigint_mul(agtype, bigint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_bigint_mul,
  LEFTARG = agtype,
  RIGHTARG =  bigint,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_bigint_mul(bigint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_bigint_mul,
  LEFTARG = bigint,
  RIGHTARG =  agtype,
  COMMUTATOR = *
);

DROP FUNCTION ag_catalog.agtype_any_div(agtype, smallint) CASCADE;
-- DROP OPERATOR / (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_div(smallint, agtype) CASCADE;
-- DROP OPERATOR / (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_div(agtype, integer) CASCADE;
-- DROP OPERATOR / (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_div(integer, agtype) CASCADE;
-- DROP OPERATOR / (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_div(agtype, bigint) CASCADE;
-- DROP OPERATOR / (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_div(bigint, agtype) CASCADE;
-- DROP OPERATOR / (bigint, agtype);
DROP FUNCTION ag_catalog.agtype_any_div(agtype, real) CASCADE;
-- DROP OPERATOR / (agtype, real);
DROP FUNCTION ag_catalog.agtype_any_div(real, agtype) CASCADE;
-- DROP OPERATOR / (real, agtype);
DROP FUNCTION ag_catalog.agtype_any_div(agtype, double precision) CASCADE;
-- DROP OPERATOR / (agtype, double precision);
DROP FUNCTION ag_catalog.agtype_any_div(double precision, agtype) CASCADE;
-- DROP OPERATOR / (double precision, agtype);
DROP FUNCTION ag_catalog.agtype_any_div(agtype, numeric) CASCADE;
-- DROP OPERATOR / (agtype, numeric);
DROP FUNCTION ag_catalog.agtype_any_div(numeric, agtype) CASCADE;
-- DROP OPERATOR / (numeric, agtype);


CREATE FUNCTION ag_catalog.agtype_bigint_div(agtype, bigint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR / (
  FUNCTION = ag_catalog.agtype_bigint_div,
  LEFTARG = agtype,
  RIGHTARG =  bigint
);

CREATE FUNCTION ag_catalog.agtype_bigint_div(bigint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR / (
  FUNCTION = ag_catalog.agtype_bigint_div,
  LEFTARG = bigint,
  RIGHTARG =  agtype
);

DROP FUNCTION ag_catalog.agtype_any_mod(agtype, smallint) CASCADE;
-- DROP OPERATOR % (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_mod(smallint, agtype) CASCADE;
-- DROP OPERATOR % (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_mod(agtype, integer) CASCADE;
-- DROP OPERATOR % (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_mod(integer, agtype) CASCADE;
-- DROP OPERATOR % (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_mod(agtype, bigint) CASCADE; 
-- DROP OPERATOR % (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_mod(bigint, agtype) CASCADE;
-- DROP OPERATOR % (bigint, agtype);
DROP FUNCTION ag_catalog.agtype_any_mod(agtype, real) CASCADE;
-- DROP OPERATOR % (agtype, real);
DROP FUNCTION ag_catalog.agtype_any_mod(real, agtype) CASCADE;
-- DROP OPERATOR % (real, agtype);
DROP FUNCTION ag_catalog.agtype_any_mod(agtype, double precision) CASCADE;
-- DROP OPERATOR % (agtype, double precision);
DROP FUNCTION ag_catalog.agtype_any_mod(double precision, agtype) CASCADE;
-- DROP OPERATOR % (double precision, agtype);
DROP FUNCTION ag_catalog.agtype_any_mod(agtype, numeric) CASCADE;
-- DROP OPERATOR % (agtype, numeric);
DROP FUNCTION ag_catalog.agtype_any_mod(numeric, agtype) CASCADE;
-- DROP OPERATOR % (numeric, agtype);

CREATE FUNCTION ag_catalog.agtype_bigint_mod(agtype, bigint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_bigint_mod,
  LEFTARG = agtype,
  RIGHTARG =  bigint
);

CREATE FUNCTION ag_catalog.agtype_bigint_mod(bigint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_bigint_mod,
  LEFTARG = bigint,
  RIGHTARG =  agtype
);

DROP FUNCTION ag_catalog.agtype_any_eq(agtype, smallint) CASCADE;
-- DROP OPERATOR = (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_eq(smallint, agtype) CASCADE;
-- DROP OPERATOR = (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_eq(agtype, integer) CASCADE;
-- DROP OPERATOR = (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_eq(integer, agtype) CASCADE;
-- DROP OPERATOR = (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_eq(agtype, bigint) CASCADE;
-- DROP OPERATOR = (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_eq(bigint, agtype) CASCADE;
-- DROP OPERATOR = (bigint, agtype);
DROP FUNCTION ag_catalog.agtype_any_eq(agtype, real) CASCADE;
-- DROP OPERATOR = (agtype, real);
DROP FUNCTION ag_catalog.agtype_any_eq(real, agtype) CASCADE;
-- DROP OPERATOR = (real, agtype);
DROP FUNCTION ag_catalog.agtype_any_eq(agtype, double precision) CASCADE;
-- DROP OPERATOR = (agtype, double precision);
DROP FUNCTION ag_catalog.agtype_any_eq(double precision, agtype) CASCADE;
-- DROP OPERATOR = (double precision, agtype);
DROP FUNCTION ag_catalog.agtype_any_eq(agtype, numeric) CASCADE;
-- DROP OPERATOR = (agtype, numeric);
DROP FUNCTION ag_catalog.agtype_any_eq(numeric, agtype) CASCADE;
-- DROP OPERATOR = (numeric, agtype);

DROP FUNCTION ag_catalog.agtype_any_ne(agtype, smallint) CASCADE;
--DROP OPERATOR <> (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_ne(smallint, agtype) CASCADE;
--DROP OPERATOR <> (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_ne(agtype, integer) CASCADE;
--DROP OPERATOR <> (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_ne(integer, agtype) CASCADE;
--DROP OPERATOR <> (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_ne(agtype, bigint) CASCADE;
--DROP OPERATOR <> (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_ne(bigint, agtype) CASCADE;
--DROP OPERATOR <> (bigint, agtype);
DROP FUNCTION ag_catalog.agtype_any_ne(agtype, real) CASCADE;
--DROP OPERATOR <> (agtype, real);
DROP FUNCTION ag_catalog.agtype_any_ne(real, agtype) CASCADE;
--DROP OPERATOR <> (real, agtype);
DROP FUNCTION ag_catalog.agtype_any_ne(agtype, double precision) CASCADE;
--DROP OPERATOR <> (agtype, double precision);
DROP FUNCTION ag_catalog.agtype_any_ne(double precision, agtype) CASCADE;
--DROP OPERATOR <> (double precision, agtype);
DROP FUNCTION ag_catalog.agtype_any_ne(agtype, numeric) CASCADE;
--DROP OPERATOR <> (agtype, numeric);
DROP FUNCTION ag_catalog.agtype_any_ne(numeric, agtype) CASCADE;
--DROP OPERATOR <> (numeric, agtype);

DROP FUNCTION ag_catalog.agtype_any_lt(agtype, smallint) CASCADE;
-- DROP OPERATOR < (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_lt(smallint, agtype) CASCADE;
-- DROP OPERATOR < (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_lt(agtype, integer) CASCADE;
-- DROP OPERATOR < (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_lt(integer, agtype) CASCADE;
-- DROP OPERATOR < (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_lt(agtype, bigint) CASCADE;
-- DROP OPERATOR < (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_lt(bigint, agtype) CASCADE;
-- DROP OPERATOR < (bigint, agtype);
DROP FUNCTION ag_catalog.agtype_any_lt(agtype, real) CASCADE;
-- DROP OPERATOR < (agtype, real);
DROP FUNCTION ag_catalog.agtype_any_lt(real, agtype) CASCADE;
-- DROP OPERATOR < (real, agtype);
DROP FUNCTION ag_catalog.agtype_any_lt(agtype, double precision) CASCADE;
-- DROP OPERATOR < (agtype, double precision);
DROP FUNCTION ag_catalog.agtype_any_lt(double precision, agtype) CASCADE;
-- DROP OPERATOR < (double precision, agtype);
DROP FUNCTION ag_catalog.agtype_any_lt(agtype, numeric) CASCADE;
-- DROP OPERATOR < (agtype, numeric);
DROP FUNCTION ag_catalog.agtype_any_lt(numeric, agtype) CASCADE;
-- DROP OPERATOR < (numeric, agtype);

DROP FUNCTION ag_catalog.agtype_any_gt(agtype, smallint) CASCADE;
-- DROP OPERATOR > (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_gt(smallint, agtype) CASCADE;
-- DROP OPERATOR > (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_gt(agtype, integer) CASCADE;
-- DROP OPERATOR > (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_gt(integer, agtype) CASCADE;
-- DROP OPERATOR > (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_gt(agtype, bigint) CASCADE;
-- DROP OPERATOR > (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_gt(bigint, agtype) CASCADE;
-- DROP OPERATOR > (bigint, agtype);
DROP FUNCTION ag_catalog.agtype_any_gt(agtype, real) CASCADE;
-- DROP OPERATOR > (agtype, real);
DROP FUNCTION ag_catalog.agtype_any_gt(real, agtype) CASCADE;
-- DROP OPERATOR > (real, agtype);
DROP FUNCTION ag_catalog.agtype_any_gt(agtype, double precision) CASCADE;
-- DROP OPERATOR > (agtype, double precision);
DROP FUNCTION ag_catalog.agtype_any_gt(double precision, agtype) CASCADE;
-- DROP OPERATOR > (double precision, agtype);
DROP FUNCTION ag_catalog.agtype_any_gt(agtype, numeric) CASCADE;
-- DROP OPERATOR > (agtype, numeric);
DROP FUNCTION ag_catalog.agtype_any_gt(numeric, agtype) CASCADE;
-- DROP OPERATOR > (numeric, agtype);

DROP FUNCTION ag_catalog.agtype_any_le(agtype, smallint) CASCADE;
-- DROP OPERATOR <= (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_le(smallint, agtype) CASCADE;
-- DROP OPERATOR <= (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_le(agtype, integer) CASCADE;
-- DROP OPERATOR <= (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_le(integer, agtype) CASCADE;
-- DROP OPERATOR <= (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_le(agtype, bigint) CASCADE;
-- DROP OPERATOR <= (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_le(bigint, agtype) CASCADE;
-- DROP OPERATOR <= (bigint, agtype);
DROP FUNCTION ag_catalog.agtype_any_le(agtype, real) CASCADE;
-- DROP OPERATOR <= (agtype, real);
DROP FUNCTION ag_catalog.agtype_any_le(real, agtype) CASCADE;
-- DROP OPERATOR <= (real, agtype);
DROP FUNCTION ag_catalog.agtype_any_le(agtype, double precision) CASCADE;
-- DROP OPERATOR <= (agtype, double precision);
DROP FUNCTION ag_catalog.agtype_any_le(double precision, agtype) CASCADE;
-- DROP OPERATOR <= (double precision, agtype);
DROP FUNCTION ag_catalog.agtype_any_le(agtype, numeric) CASCADE;
-- DROP OPERATOR <= (agtype, numeric);
DROP FUNCTION ag_catalog.agtype_any_le(numeric, agtype) CASCADE;
-- DROP OPERATOR <= (numeric, agtype);

DROP FUNCTION ag_catalog.agtype_any_ge(agtype, smallint) CASCADE;
-- DROP OPERATOR >= (agtype, smallint);
DROP FUNCTION ag_catalog.agtype_any_ge(smallint, agtype) CASCADE;
-- DROP OPERATOR >= (smallint, agtype);
DROP FUNCTION ag_catalog.agtype_any_ge(agtype, integer) CASCADE;
-- DROP OPERATOR >= (agtype, integer);
DROP FUNCTION ag_catalog.agtype_any_ge(integer, agtype) CASCADE;
-- DROP OPERATOR >= (integer, agtype);
DROP FUNCTION ag_catalog.agtype_any_ge(agtype, bigint) CASCADE;
-- DROP OPERATOR >= (agtype, bigint);
DROP FUNCTION ag_catalog.agtype_any_ge(bigint, agtype) CASCADE;
-- DROP OPERATOR >= (bigint, agtype);
DROP FUNCTION ag_catalog.agtype_any_ge(agtype, real) CASCADE;
-- DROP OPERATOR >= (agtype, real);
DROP FUNCTION ag_catalog.agtype_any_ge(real, agtype) CASCADE;
-- DROP OPERATOR >= (real, agtype);
DROP FUNCTION ag_catalog.agtype_any_ge(agtype, double precision) CASCADE;
-- DROP OPERATOR >= (agtype, double precision);
DROP FUNCTION ag_catalog.agtype_any_ge(double precision, agtype) CASCADE;
-- DROP OPERATOR >= (double precision, agtype);
DROP FUNCTION ag_catalog.agtype_any_ge(agtype, numeric) CASCADE;
-- DROP OPERATOR >= (agtype, numeric);
DROP FUNCTION ag_catalog.agtype_any_ge(numeric, agtype) CASCADE;
-- DROP OPERATOR >= (numeric, agtype);

DROP FUNCTION ag_catalog.age_label(agtype) CASCADE;