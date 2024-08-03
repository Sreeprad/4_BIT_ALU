set -e
set -x

rex -dp_comm_string 1,cad6,39113 -V -m -pd -I# -tech /home/install/FOUNDRY/analog/90nm/assura/rcx -map p2elayermapfile -N NET -e2 -Ply np_rpoly_conn -rP res.mod -mp mprexadRFhgA np_rmetal1_conn::mt1_cut - rcont_poly,1,T rcont_pdiff,1,t rcont_ndiff,1,t rMetal1_v,1 - L1T0,1,I

rex -dp_comm_string 2,cad6,39113 -V -m -pd -I# -tech /home/install/FOUNDRY/analog/90nm/assura/rcx -map p2elayermapfile -N NET -e2 -Ply np_rpoly_conn -rP res.mod -mp mprexa0CZvAz np_rpoly_conn::poly_cut - _pmos_12_MOS_7_mgvia,1,z _nmos_12_MOS_1_mgvia,1,z rcont_poly,1,x

rexmerge -V -N NET -n mprexa0CZvAz,mprexadRFhgA -b np_rpoly_conn::Rnp_rpoly_conn.dev2,np_rmetal1_conn::Rnp_rmetal1_conn.dev2 -l ,L1T0 np_rpoly_conn.res,np_rmetal1_conn.res

