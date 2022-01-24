-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "ALTER EXTENSION age UPDATE TO '0.4.0'" to load this file. \quit

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

-- agtype -> text (explicit)
CREATE FUNCTION ag_catalog.agtype_to_text(agtype)
RETURNS text
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE CAST (agtype AS text)
WITH FUNCTION ag_catalog.agtype_to_text(agtype);

-- agtype -> int8
CREATE FUNCTION ag_catalog.agtype_to_int8(variadic "any")
RETURNS bigint
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE CAST (agtype AS bigint)
WITH FUNCTION ag_catalog.agtype_to_int8(variadic "any");

-- agtype -> int4
CREATE FUNCTION ag_catalog.agtype_to_int4(variadic "any")
RETURNS int
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

-- agtype -> int2
CREATE CAST (agtype AS int)
WITH FUNCTION ag_catalog.agtype_to_int4(variadic "any");

CREATE FUNCTION ag_catalog.agtype_to_int2(variadic "any")
RETURNS smallint
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE CAST (agtype AS smallint)
WITH FUNCTION ag_catalog.agtype_to_int2(variadic "any");

CREATE FUNCTION ag_catalog._cypher_delete_clause(internal)
RETURNS void
LANGUAGE c
AS 'MODULE_PATHNAME';

DROP FUNCTION ag_catalog.age_float8_stddev_pop_aggfinalfn(_float8);

CREATE FUNCTION ag_catalog.age_float8_stddev_pop_aggfinalfn(_float8)
RETURNS agtype
LANGUAGE c
IMMUTABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';

-- wrapper for the float8_accum to use agtype input
CREATE FUNCTION ag_catalog.age_agtype_float8_accum(_float8, agtype)
RETURNS _float8
LANGUAGE c
IMMUTABLE
STRICT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

DROP AGGREGATE ag_catalog.age_stdev(float8);
CREATE AGGREGATE ag_catalog.age_stdev(agtype)
(
   stype = _float8,
   sfunc = ag_catalog.age_agtype_float8_accum,
   finalfunc = ag_catalog.age_float8_stddev_samp_aggfinalfn,
   combinefunc = float8_combine,
   finalfunc_modify = read_only,
   initcond = '{0,0,0}',
   parallel = safe
);

DROP FUNCTION ag_catalog.age_float8_stddev_pop_aggfinalfn(_float8);

CREATE FUNCTION ag_catalog.age_float8_stddev_pop_aggfinalfn(_float8)
RETURNS agtype
LANGUAGE c
IMMUTABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';

DROP AGGREGATE ag_catalog.age_stdevp (float8)

-- aggregate definition for age_stdevp(agtype)
CREATE AGGREGATE ag_catalog.age_stdevp(agtype)
(
   stype = _float8,
   sfunc = age_agtype_float8_accum,
   finalfunc = ag_catalog.age_float8_stddev_pop_aggfinalfn,
   combinefunc = float8_combine,
   finalfunc_modify = read_only,
   initcond = '{0,0,0}',
   parallel = safe
);

-- aggregate definition for avg(agytpe)
CREATE AGGREGATE ag_catalog.age_avg(agtype)
(
   stype = _float8,
   sfunc = ag_catalog.age_agtype_float8_accum,
   finalfunc = float8_avg,
   combinefunc = float8_combine,
   finalfunc_modify = read_only,
   initcond = '{0,0,0}',
   parallel = safe
);

-- sum aggtransfn
CREATE FUNCTION ag_catalog.age_agtype_sum(agtype, agtype)
RETURNS agtype
LANGUAGE c
IMMUTABLE
STRICT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

-- aggregate definition for sum(agytpe)
CREATE AGGREGATE ag_catalog.age_sum(agtype)
(
   stype = agtype,
   sfunc = ag_catalog.age_agtype_sum,
   combinefunc = ag_catalog.age_agtype_sum,
   finalfunc_modify = read_only,
   parallel = safe
);

-- aggregate definition for max(variadic "any")
DROP AGGREGATE ag_catalog.age_max(agtype);
CREATE AGGREGATE ag_catalog.age_max(variadic "any")
(
   stype = agtype,
   sfunc = ag_catalog.age_agtype_larger_aggtransfn,
   combinefunc = ag_catalog.age_agtype_larger_aggtransfn,
   finalfunc_modify = read_only,
   parallel = safe
);

-- aggregate definition for min(variadic "any")
DROP AGGREGATE ag_catalog.age_min(agtype);
CREATE AGGREGATE ag_catalog.age_min(variadic "any")
(
   stype = agtype,
   sfunc = ag_catalog.age_agtype_smaller_aggtransfn,
   combinefunc = ag_catalog.age_agtype_smaller_aggtransfn,
   finalfunc_modify = read_only,
   parallel = safe
);

-- max transfer function
DROP FUNCTION ag_catalog.age_agtype_larger_aggtransfn(agtype, agtype);
CREATE FUNCTION ag_catalog.age_agtype_larger_aggtransfn(agtype, variadic "any")
RETURNS agtype
LANGUAGE c
IMMUTABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';

-- min transfer function
DROP FUNCTION ag_catalog.age_agtype_smaller_aggtransfn(agtype, agtype);
CREATE FUNCTION ag_catalog.age_agtype_smaller_aggtransfn(agtype, variadic "any")
RETURNS agtype
LANGUAGE c
IMMUTABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';

-- percentile transfer function
DROP FUNCTION ag_catalog.age_percentile_aggtransfn(internal, float8, float8);
CREATE FUNCTION ag_catalog.age_percentile_aggtransfn(internal, agtype, agtype)
RETURNS internal
LANGUAGE c
IMMUTABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';  

-- percentile_cont final function
DROP FUNCTION ag_catalog.age_percentile_cont_aggfinalfn(internal);
CREATE FUNCTION ag_catalog.age_percentile_cont_aggfinalfn(internal)
RETURNS agtype
LANGUAGE c
IMMUTABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';
