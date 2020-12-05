REM Export views to geojson, and geopackage files.Change ogr2ogr path, location paths, db information if needed.

REM physical exposure csv
FOR %%x IN (nhsl_physical_exposure_all_indicators_b,nhsl_physical_exposure_all_indicators_s) DO ogr2ogr -f "csv" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.csv PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_physical_exposure.%%x WHERE pruid = '59'"

REM risk dynamics csv
FOR %%x IN (nhsl_risk_dynamics_all_indicators) DO ogr2ogr -f "csv" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.csv PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_risk_dynamics.%%x WHERE pruid = '59'"

REM social fabric csv
FOR %%x IN (nhsl_social_fabric_all_indicators_s) DO ogr2ogr -f "csv" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.csv PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_social_fabric.%%x WHERE pruid = '59'"

REM multihazard csv
FOR %%x IN (nhsl_hazard_threat_all_indicators_s) DO ogr2ogr -f "csv" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.csv PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_hazard_threat.%%x WHERE pruid = '59'"

REM DSRA csv
FOR %%x IN (dsra_sim9p0_cszlockedtrans_all_indicators_b,dsra_sim9p0_cszlockedtrans_all_indicators_s,) DO ogr2ogr -f "csv" D:\workspace\data\view_outputs\thoughtspot\%%x.csv PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" results_dsra_sim9p0_cszlockedtrans.%%x

REM DSRA csv
FOR %%x IN (dsra_acm7p2_lrdmf_all_indicators_b,dsra_acm7p2_lrdmf_all_indicators_s) DO ogr2ogr -f "csv" D:\workspace\data\view_outputs\thoughtspot\%%x.csv PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" results_dsra_acm7p2_lrdmf.%%x

REM physical exposure geojson
FOR %%x IN (nhsl_physical_exposure_all_indicators_b,nhsl_physical_exposure_all_indicators_s) DO ogr2ogr -f "geojson" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.geojson PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_physical_exposure.%%x WHERE pruid = '59'"

REM risk dynamics geojson
FOR %%x IN (nhsl_risk_dynamics_all_indicators) DO ogr2ogr -f "geojson" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.geojson PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_risk_dynamics.%%x WHERE pruid = '59'"

REM social fabric geojson
FOR %%x IN (nhsl_social_fabric_all_indicators_s) DO ogr2ogr -f "geojson" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.geojson PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_social_fabric.%%x WHERE pruid = '59'"

REM multihazard geojson
FOR %%x IN (nhsl_hazard_threat_all_indicators_s) DO ogr2ogr -f "geojson" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.geojson PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_hazard_threat.%%x WHERE pruid = '59'"

REM DSRA geojson
FOR %%x IN (dsra_sim9p0_cszlockedtrans_all_indicators_b,dsra_sim9p0_cszlockedtrans_all_indicators_s) DO ogr2ogr -f "geojson" -lco WRITE_NON_FINITE_VALUES=YES D:\workspace\data\view_outputs\thoughtspot\%%x.geojson PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" results_dsra_sim9p0_cszlockedtrans.%%x

REM DSRA geojson
FOR %%x IN (dsra_acm7p2_lrdmf_all_indicators_b,dsra_acm7p2_lrdmf_all_indicators_s) DO ogr2ogr -f "geojson" -lco WRITE_NON_FINITE_VALUES=YES D:\workspace\data\view_outputs\thoughtspot\%%x.geojson PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" results_dsra_acm7p2_lrdmf.%%x

REM physical exposure gpkg
FOR %%x IN (nhsl_physical_exposure_all_indicators_b,nhsl_physical_exposure_all_indicators_s) DO ogr2ogr -f "gpkg" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.gpkg PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_physical_exposure.%%x WHERE pruid = '59'"

REM risk dynamics gpkg
FOR %%x IN (nhsl_risk_dynamics_all_indicators) DO ogr2ogr -f "gpkg" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.gpkg PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_risk_dynamics.%%x WHERE pruid = '59'"

REM social fabric gpkg
FOR %%x IN (nhsl_social_fabric_all_indicators_s) DO ogr2ogr -f "gpkg" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.gpkg PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_social_fabric.%%x WHERE pruid = '59'"

REM multihazard gpkg
FOR %%x IN (nhsl_hazard_threat_all_indicators_s) DO ogr2ogr -f "gpkg" D:\workspace\data\view_outputs\thoughtspot\%%x_BC.gpkg PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" -sql "SELECT * FROM results_nhsl_hazard_threat.%%x WHERE pruid = '59'"

REM DSRA gpkg
FOR %%x IN (dsra_sim9p0_cszlockedtrans_all_indicators_b,dsra_sim9p0_cszlockedtrans_all_indicators_s) DO ogr2ogr -f "gpkg" D:\workspace\data\view_outputs\thoughtspot\%%x.gpkg PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" results_dsra_sim9p0_cszlockedtrans.%%x

REM DSRA gpkg
FOR %%x IN (dsra_acm7p2_lrdmf_all_indicators_b,dsra_acm7p2_lrdmf_all_indicators_s) DO ogr2ogr -f "gpkg" D:\workspace\data\view_outputs\thoughtspot\%%x.gpkg PG:"host=localhost user=postgres dbname=opendrr_allscenarios password=admin" results_dsra_acm7p2_lrdmf.%%x

PAUSE