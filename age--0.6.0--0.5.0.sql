DROP FUNCTION ag_catalog.create_vlabel(graph_name name, label_name name) CASCADE;

DROP FUNCTION ag_catalog.create_elabel(graph_name name, label_name name) CASCADE;

DROP FUNCTION ag_catalog.graphid_send(graphid) CASCADE;

DROP FUNCTION ag_catalog.graphid_recv(internal) CASCADE;

-- undo UPDATE typname = 'graphid';

-- undo UPDATE typename = 'agtype';

DROP FUNCTION ag_catalog.agtype_to_int4_array(variadic "any") CASCADE;

DROP CAST (agtype AS int[])
    WITH FUNCTION ag_catalog.agtype_to_int4_array(variadic "any") CASCADE;
    
DROP FUNCTION ag_catalog.age_eq_tilde(agtype, agtype) CASCADE;

DROP FUNCTION ag_catalog.age_vle(IN agtype, IN agtype, IN agtype, IN agtype,
                                   IN agtype, IN agtype, IN agtype,
                                   OUT edges agtype) CASCADE;
                                   
                                   
DROP FUNCTION ag_catalog.age_build_vle_match_edge(agtype, agtype) CASCADE;

DROP FUNCTION ag_catalog.age_match_vle_terminal_edge(agtype, agtype, agtype) CASCADE;

DROP FUNCTION ag_catalog.age_materialize_vle_path(agtype) CASCADE;

DROP FUNCTION ag_catalog.age_materialize_vle_edges(agtype) CASCADE;

DROP FUNCTION ag_catalog.age_match_vle_edge_to_id_qual(agtype, agtype, agtype) CASCADE;

DROP FUNCTION ag_catalog.age_match_two_vle_edges(agtype, agtype) CASCADE;

DROP FUNCTION ag_catalog.age_keys(agtype) CASCADE;

DROP FUNCTION ag_catalog.age_labels(agtype) CASCADE;

DROP FUNCTION ag_catalog.age_nodes(agtype) CASCADE;

DROP FUNCTION ag_catalog.age_relationships(agtype) CASCADE;

DROP FUNCTION ag_catalog.age_range(variadic "any") CASCADE;

-- End
