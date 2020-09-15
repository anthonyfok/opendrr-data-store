REM Export views to geojson, and geopackage files. Replace exposure name {bldgexp_canada} to target exposure if different to run.  Change ogr2ogr path, location paths, db information if needed.


REM Geopackage Shapefile export
FOR %%x IN (nhsl_physical_exposure_all_indicators_b) DO "C:\OSGeo4W64\bin\ogr2ogr.exe" -f "gpkg" D:\workspace\data\view_outputs\%%x.gpkg PG:"host=localhost user=postgres dbname=oq_sandbox_new_exposure password=password" results_nhsl_physical_exposure.%%x

REM Geopackage Shapefile export
FOR %%x IN (nhsl_risk_dynamics_all_indicators_s) DO "C:\OSGeo4W64\bin\ogr2ogr.exe" -f "gpkg" D:\workspace\data\view_outputs\%%x.gpkg PG:"host=localhost user=postgres dbname=oq_sandbox_new_exposure password=password" results_nhsl_risk_dynamics.%%x

REM Geopackage Shapefile export
FOR %%x IN (nhsl_social_fabric_all_indicators_s) DO "C:\OSGeo4W64\bin\ogr2ogr.exe" -f "gpkg" D:\workspace\data\view_outputs\%%x.gpkg PG:"host=localhost user=postgres dbname=oq_sandbox_new_exposure password=password" results_nhsl_social_fabric.%%x

REM Geopackage Shapefile export
FOR %%x IN (nhsl_hazard_threat_all_indicators_s) DO "C:\OSGeo4W64\bin\ogr2ogr.exe" -f "gpkg" D:\workspace\data\view_outputs\%%x.gpkg PG:"host=localhost user=postgres dbname=oq_sandbox_new_exposure password=password" results_nhsl_hazard_threat.%%x


PAUSE