-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "ALTER EXTENSION age UPDATE TO '0.5.0'" to load this file. \quit

DROP FUNCTION ag_catalog.agtype_bigint_add(bigint, agtype);
DROP FUNCTION ag_catalog.agtype_bigint_add(agtype, bigint);

DROP OPERATOR + (bigint, agtype);
DROP OPERATOR + (agtype, bigint);

CREATE FUNCTION ag_catalog.agtype_any_add(agtype, smallint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = agtype,
  RIGHTARG =  smallint
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(smallint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + ( 
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = smallint,
  RIGHTARG =  agtype,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(agtype, integer)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = agtype,
  RIGHTARG =  integer,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(integer, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = integer,
  RIGHTARG =  agtype,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(agtype, bigint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = agtype,
  RIGHTARG =  bigint,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(bigint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = bigint,
  RIGHTARG =  agtype,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(agtype, real)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = agtype,
  RIGHTARG =  real,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(real, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = real,
  RIGHTARG =  agtype,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(agtype, double precision)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = agtype,
  RIGHTARG =  double precision,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(double precision, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = double precision,
  RIGHTARG =  agtype,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(agtype, numeric)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = agtype,
  RIGHTARG =  numeric,
  COMMUTATOR = +
);

CREATE FUNCTION ag_catalog.agtype_any_add(numeric, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR + (
  FUNCTION = ag_catalog.agtype_any_add,
  LEFTARG = numeric,
  RIGHTARG =  agtype,
  COMMUTATOR = +
);

DROP FUNCTION ag_catalog.agtype_bigint_sub(agtype, bigint)
DROP FUNCTION ag_catalog.agtype_bigint_sub(bigint, agtype)

DROP OPERATOR - (agtype, bigint);
DROP OPERATOR - (bigint, agtype);


CREATE FUNCTION ag_catalog.agtype_any_sub(agtype, smallint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = agtype,
  RIGHTARG =  smallint
);

CREATE FUNCTION ag_catalog.agtype_any_sub(smallint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = smallint,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_sub(agtype, integer)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = agtype,
  RIGHTARG =  integer
);

CREATE FUNCTION ag_catalog.agtype_any_sub(integer, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = integer,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_sub(agtype, bigint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = agtype,
  RIGHTARG =  bigint
);

CREATE FUNCTION ag_catalog.agtype_any_sub(bigint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = bigint,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_sub(agtype, real)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = agtype,
  RIGHTARG =  real
);

CREATE FUNCTION ag_catalog.agtype_any_sub(real, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = real,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_sub(agtype, double precision)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = agtype,
  RIGHTARG =  double precision
);

CREATE FUNCTION ag_catalog.agtype_any_sub(double precision, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = double precision,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_sub(agtype, numeric)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = agtype,
  RIGHTARG =  numeric
);

CREATE FUNCTION ag_catalog.agtype_any_sub(numeric, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR - (
  FUNCTION = ag_catalog.agtype_any_sub,
  LEFTARG = numeric,
  RIGHTARG =  agtype
);

DROP FUNCTION ag_catalog.agtype_bigint_mul(agtype, bigint);
DROP FUNCTION ag_catalog.agtype_bigint_mul(bigint, agtype);

DROP OPERATOR * (agtype, bigint);
DROP OPERATOR * (bigint, agtype);

CREATE FUNCTION ag_catalog.agtype_any_mul(agtype, smallint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = agtype,
  RIGHTARG =  smallint,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(smallint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = smallint,
  RIGHTARG =  agtype,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(agtype, integer)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = agtype,
  RIGHTARG =  integer,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(integer, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = integer,
  RIGHTARG =  agtype,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(agtype, bigint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = agtype,
  RIGHTARG =  bigint,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(bigint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = bigint,
  RIGHTARG =  agtype,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(agtype, real)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = agtype,
  RIGHTARG =  real,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(real, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = real,
  RIGHTARG =  agtype,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(agtype, double precision)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = agtype,
  RIGHTARG =  double precision,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(double precision, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = double precision,
  RIGHTARG =  agtype,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(agtype, numeric)
RETURNS agtype
LANGUAGE c 
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = agtype,
  RIGHTARG =  numeric,
  COMMUTATOR = *
);

CREATE FUNCTION ag_catalog.agtype_any_mul(numeric, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR * (
  FUNCTION = ag_catalog.agtype_any_mul,
  LEFTARG = numeric,
  RIGHTARG =  agtype,
  COMMUTATOR = *
);

DROP FUNCTION ag_catalog.agtype_bigint_div(agtype, bigint);
DROP FUNCTION ag_catalog.agtype_bigint_div(bigint, agtype);

DROP OPERATOR / (agtype, bigint);
DROP OPERATOR / (bigint, agtype);

CREATE FUNCTION ag_catalog.agtype_any_div(agtype, smallint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR / (
  FUNCTION = ag_catalog.agtype_any_div,
  LEFTARG = agtype,
  RIGHTARG =  smallint
);

CREATE FUNCTION ag_catalog.agtype_any_div(smallint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR / (
  FUNCTION = ag_catalog.agtype_any_div,
  LEFTARG = smallint,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_div(agtype, integer)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR / (
  FUNCTION = ag_catalog.agtype_any_div,
  LEFTARG = agtype,
  RIGHTARG =  integer
);

CREATE FUNCTION ag_catalog.agtype_any_div(integer, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR / (
  FUNCTION = ag_catalog.agtype_any_div,
  LEFTARG = integer,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_div(agtype, bigint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR / (
  FUNCTION = ag_catalog.agtype_any_div,
  LEFTARG = agtype,
  RIGHTARG =  bigint
);

CREATE FUNCTION ag_catalog.agtype_any_div(bigint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR / (
  FUNCTION = ag_catalog.agtype_any_div,
  LEFTARG = bigint,
  RIGHTARG =  agtype
);

DROP FUNCTION ag_catalog.agtype_bigint_mod(agtype, bigint);
DROP FUNCTION ag_catalog.agtype_bigint_mod(bigint, agtype);

DROP OPERATOR % (agtype, bigint);
DROP OPERATOR % (bigint, agtype);

CREATE FUNCTION ag_catalog.agtype_any_mod(agtype, smallint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = agtype,
  RIGHTARG =  smallint
);

CREATE FUNCTION ag_catalog.agtype_any_mod(smallint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = smallint,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_mod(agtype, integer)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = agtype,
  RIGHTARG =  integer
);

CREATE FUNCTION ag_catalog.agtype_any_mod(integer, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = integer,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_mod(agtype, bigint)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = agtype,
  RIGHTARG =  bigint
);

CREATE FUNCTION ag_catalog.agtype_any_mod(bigint, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = bigint,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_mod(agtype, real)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = agtype,
  RIGHTARG =  real
);

CREATE FUNCTION ag_catalog.agtype_any_mod(real, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = real,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_mod(agtype, double precision)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = agtype,
  RIGHTARG =  double precision
);

CREATE FUNCTION ag_catalog.agtype_any_mod(double precision, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = double precision,
  RIGHTARG =  agtype
);

CREATE FUNCTION ag_catalog.agtype_any_mod(agtype, numeric)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = agtype,
  RIGHTARG =  numeric
);

CREATE FUNCTION ag_catalog.agtype_any_mod(numeric, agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR % (
  FUNCTION = ag_catalog.agtype_any_mod,
  LEFTARG = numeric,
  RIGHTARG =  agtype
);

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_eq,
  LEFTARG = agtype,
  RIGHTARG = agtype,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES
);

CREATE FUNCTION ag_catalog.agtype_any_eq(agtype, smallint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = agtype,
  RIGHTARG = smallint,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(smallint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = smallint,
  RIGHTARG = agtype,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(agtype, integer)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = agtype,
  RIGHTARG = integer,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(integer, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = integer,
  RIGHTARG = agtype,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(agtype, bigint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = agtype,
  RIGHTARG = bigint,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(bigint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = bigint,
  RIGHTARG = agtype,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(agtype, real)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = agtype,
  RIGHTARG = real,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(real, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = real,
  RIGHTARG = agtype,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(agtype, double precision)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = agtype,
  RIGHTARG = double precision,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(double precision, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = double precision,
  RIGHTARG = agtype,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(agtype, numeric)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = agtype,
  RIGHTARG = numeric,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_eq(numeric, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR = (
  FUNCTION = ag_catalog.agtype_any_eq,
  LEFTARG = numeric,
  RIGHTARG = agtype,
  COMMUTATOR = =,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(agtype, smallint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = agtype,
  RIGHTARG = smallint,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(smallint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = smallint,
  RIGHTARG = agtype,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(agtype, integer)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = agtype,
  RIGHTARG = integer,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(integer, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = integer,
  RIGHTARG = agtype,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(agtype, bigint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = agtype,
  RIGHTARG = bigint,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(bigint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = bigint,
  RIGHTARG = agtype,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(agtype, real)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = agtype,
  RIGHTARG = real,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(real, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = real,
  RIGHTARG = agtype,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(agtype, double precision)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = agtype,
  RIGHTARG = double precision,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(double precision, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = double precision,
  RIGHTARG = agtype,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(agtype, numeric)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = agtype,
  RIGHTARG = numeric,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ne(numeric, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <> (
  FUNCTION = ag_catalog.agtype_any_ne,
  LEFTARG = numeric,
  RIGHTARG = agtype,
  COMMUTATOR = <>,
  NEGATOR = =,
  RESTRICT = neqsel,
  JOIN = neqjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(agtype, smallint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = agtype,
  RIGHTARG = smallint,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(smallint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = smallint,
  RIGHTARG = agtype,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(agtype, integer)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = agtype,
  RIGHTARG = integer,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(integer, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = integer,
  RIGHTARG = agtype,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(agtype, bigint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = agtype,
  RIGHTARG = bigint,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(bigint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = bigint,
  RIGHTARG = agtype,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(agtype, real)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = agtype,
  RIGHTARG = real,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(real, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = real,
  RIGHTARG = agtype,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(agtype, double precision)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = agtype,
  RIGHTARG = double precision,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(double precision, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = double precision,
  RIGHTARG = agtype,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(agtype, numeric)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = agtype,
  RIGHTARG = numeric,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_lt(numeric, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR < (
  FUNCTION = ag_catalog.agtype_any_lt,
  LEFTARG = numeric,
  RIGHTARG = agtype,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(agtype, smallint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = agtype,
  RIGHTARG = smallint,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(smallint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = smallint,
  RIGHTARG = agtype,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(agtype, integer)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = agtype,
  RIGHTARG = integer,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(integer, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = integer,
  RIGHTARG = agtype,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(agtype, bigint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = agtype,
  RIGHTARG = bigint,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(bigint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = bigint,
  RIGHTARG = agtype,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(agtype, real)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = agtype,
  RIGHTARG = real,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(real, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = real,
  RIGHTARG = agtype,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(agtype, double precision)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = agtype,
  RIGHTARG = double precision,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(double precision, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = double precision,
  RIGHTARG = agtype,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(agtype, numeric)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = agtype,
  RIGHTARG = numeric,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_gt(numeric, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR > (
  FUNCTION = ag_catalog.agtype_any_gt,
  LEFTARG = numeric,
  RIGHTARG = agtype,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(agtype, smallint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = agtype,
  RIGHTARG = smallint,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(smallint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = smallint,
  RIGHTARG = agtype,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(agtype, integer)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = agtype,
  RIGHTARG = integer,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(integer, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = integer,
  RIGHTARG = agtype,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(agtype, bigint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = agtype,
  RIGHTARG = bigint,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(bigint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = bigint,
  RIGHTARG = agtype,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(agtype, real)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = agtype,
  RIGHTARG = real,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(real, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = real,
  RIGHTARG = agtype,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(agtype, double precision)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = agtype,
  RIGHTARG = double precision,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(double precision, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = double precision,
  RIGHTARG = agtype,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(agtype, numeric)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = agtype,
  RIGHTARG = numeric,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_le(numeric, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR <= (
  FUNCTION = ag_catalog.agtype_any_le,
  LEFTARG = numeric,
  RIGHTARG = agtype,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(agtype, smallint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = agtype,
  RIGHTARG = smallint,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(smallint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = smallint,
  RIGHTARG = agtype,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(agtype, integer)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = agtype,
  RIGHTARG = integer,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(integer, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = integer,
  RIGHTARG = agtype,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(agtype, bigint)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = agtype,
  RIGHTARG = bigint,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(bigint, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = bigint,
  RIGHTARG = agtype,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(agtype, real)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = agtype,
  RIGHTARG = real,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(real, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = real,
  RIGHTARG = agtype,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(agtype, double precision)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = agtype,
  RIGHTARG = double precision,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(double precision, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = double precision,
  RIGHTARG = agtype,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(agtype, numeric)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = agtype,
  RIGHTARG = numeric,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE FUNCTION ag_catalog.agtype_any_ge(numeric, agtype)
RETURNS boolean
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OPERATOR >= (
  FUNCTION = ag_catalog.agtype_any_ge,
  LEFTARG = numeric,
  RIGHTARG = agtype,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalargesel,
  JOIN = scalargejoinsel
);

CREATE OR REPLACE CAST (agtype AS float8)
WITH FUNCTION ag_catalog.agtype_to_float8(agtype);

CREATE OR REPLACE CAST (agtype AS bigint)
WITH FUNCTION ag_catalog.agtype_to_int8(variadic "any")
AS ASSIGNMENT;

CREATE FUNCTION ag_catalog.age_label(agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';
