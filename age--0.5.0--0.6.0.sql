CREATE FUNCTION ag_catalog.create_vlabel(graph_name name, label_name name)
    RETURNS void
    LANGUAGE c
AS 'MODULE_PATHNAME';

CREATE FUNCTION ag_catalog.create_elabel(graph_name name, label_name name)
    RETURNS void
    LANGUAGE c
AS 'MODULE_PATHNAME';

-- binary I/O functions
CREATE FUNCTION ag_catalog.graphid_send(graphid)
RETURNS bytea
LANGUAGE c
IMMUTABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE FUNCTION ag_catalog.graphid_recv(internal)
RETURNS graphid
LANGUAGE c
IMMUTABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

UPDATE pg_type SET
typsend = 'ag_catalog.graphid_send',
typreceive = 'ag_catalog.graphid_recv'
WHERE typname = 'graphid';

-- binary I/O functions
CREATE FUNCTION ag_catalog.agtype_send(agtype)
RETURNS bytea
LANGUAGE c
IMMUTABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE FUNCTION ag_catalog.agtype_recv(internal)
RETURNS agtype
LANGUAGE c
IMMUTABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

UPDATE pg_type SET
typsend = 'ag_catalog.agtype_send',
typreceive = 'ag_catalog.agtype_recv'
WHERE typname = 'agtype';

-- agtype -> int4[]
CREATE FUNCTION ag_catalog.agtype_to_int4_array(variadic "any")
    RETURNS int[]
    LANGUAGE c
    STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE CAST (agtype AS int[])
    WITH FUNCTION ag_catalog.agtype_to_int4_array(variadic "any");

CREATE FUNCTION ag_catalog.age_eq_tilde(agtype, agtype)
RETURNS agtype
LANGUAGE c
STABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE OR REPLACE FUNCTION ag_catalog.age_vle(IN agtype, IN agtype, IN agtype, IN agtype,
                                   IN agtype, IN agtype, IN agtype,
                                   OUT edges agtype)
RETURNS SETOF agtype
LANGUAGE C
STABLE
CALLED ON NULL INPUT
PARALLEL UNSAFE -- might be safe
AS 'MODULE_PATHNAME';

-- function to build an edge for a VLE match
CREATE FUNCTION ag_catalog.age_build_vle_match_edge(agtype, agtype)
RETURNS agtype
LANGUAGE C
STABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';

-- function to match a terminal vle edge
CREATE FUNCTION ag_catalog.age_match_vle_terminal_edge(agtype, agtype, agtype)
RETURNS boolean
LANGUAGE C
STABLE
CALLED ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';


-- function to create an AGTV_PATH from a VLE_path_container
CREATE FUNCTION ag_catalog.age_materialize_vle_path(agtype)
RETURNS agtype
LANGUAGE C
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

-- function to create an AGTV_ARRAY of edges from a VLE_path_container
CREATE FUNCTION ag_catalog.age_materialize_vle_edges(agtype)
RETURNS agtype
LANGUAGE C
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE FUNCTION ag_catalog.age_match_vle_edge_to_id_qual(agtype, agtype, agtype)
RETURNS boolean
LANGUAGE C
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';


CREATE FUNCTION ag_catalog.age_match_two_vle_edges(agtype, agtype)
RETURNS boolean
LANGUAGE C
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

-- list functions
CREATE FUNCTION ag_catalog.age_keys(agtype)
RETURNS agtype
LANGUAGE c
STABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE FUNCTION ag_catalog.age_labels(agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE FUNCTION ag_catalog.age_nodes(agtype)
RETURNS agtype
LANGUAGE c
STABLE
RETURNS NULL ON NULL INPUT
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE FUNCTION ag_catalog.age_relationships(agtype)
RETURNS agtype
LANGUAGE c
STABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';

CREATE FUNCTION ag_catalog.age_range(variadic "any")
RETURNS agtype
LANGUAGE c
STABLE
PARALLEL SAFE
AS 'MODULE_PATHNAME';

--
-- End
--


