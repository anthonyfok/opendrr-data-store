REM Export physical exposure views to geojson, and geopackage files. Replace exposure name {bldgexp_canada} to target exposure if different to run.  Change ogr2ogr path, location paths, db information if needed.

REM Geojson export
FOR %%x IN (nhsl_hazard_threat_cy_threat_cy_wind_hazard_s,nhsl_hazard_threat_cy_threat_to_assets_s,nhsl_hazard_threat_cy_threat_to_buildings_s,nhsl_hazard_threat_cy_threat_to_people_s,nhsl_hazard_threat_eq_seismic_hazard_intensity_s,
nhsl_hazard_threat_eq_threat_to_assets_s,nhsl_hazard_threat_eq_threat_to_buildings_s,nhsl_hazard_threat_eq_threat_to_people_s,nhsl_hazard_threat_fl_threat_fl_inundation_hazard_s,nhsl_hazard_threat_fl_threat_to_assets_s,
nhsl_hazard_threat_fl_threat_to_buildings_s,nhsl_hazard_threat_fl_threat_to_people_s,nhsl_hazard_threat_ls_threat_debris_flow_hazard_s,nhsl_hazard_threat_ls_threat_to_assets_s,nhsl_hazard_threat_ls_threat_to_buildings_s,
nhsl_hazard_threat_ls_threat_to_people_s,nhsl_hazard_threat_mh_mh_intensity_s,nhsl_hazard_threat_mh_threat_to_assets_s,nhsl_hazard_threat_mh_threat_to_buildings_s,nhsl_hazard_threat_mh_threat_to_people_s,nhsl_hazard_threat_ts_threat_to_assets_s,
nhsl_hazard_threat_ts_threat_to_buildings_s,nhsl_hazard_threat_ts_threat_to_people_s,nhsl_hazard_threat_ts_threat_ts_inundation_hazard_s,nhsl_hazard_threat_wf_threat_to_assets_s,nhsl_hazard_threat_wf_threat_to_buildings_s,
nhsl_hazard_threat_wf_threat_to_people_s,nhsl_hazard_threat_wf_threat_wf_hazard_s) DO "C:\OSGeo4W64\bin\ogr2ogr.exe" -f "GeoJSON" D:\workspace\data\view_outputs\%%x.geojson PG:"host=localhost user=postgres dbname=oq_sandbox_new_exposure password=password" results_dsra_sim6p8_cr2022.%%x

REM Geopackage Shapefile export
FOR %%x IN (nhsl_hazard_threat_cy_threat_cy_wind_hazard_s,nhsl_hazard_threat_cy_threat_to_assets_s,nhsl_hazard_threat_cy_threat_to_buildings_s,nhsl_hazard_threat_cy_threat_to_people_s,nhsl_hazard_threat_eq_seismic_hazard_intensity_s,
nhsl_hazard_threat_eq_threat_to_assets_s,nhsl_hazard_threat_eq_threat_to_buildings_s,nhsl_hazard_threat_eq_threat_to_people_s,nhsl_hazard_threat_fl_threat_fl_inundation_hazard_s,nhsl_hazard_threat_fl_threat_to_assets_s,
nhsl_hazard_threat_fl_threat_to_buildings_s,nhsl_hazard_threat_fl_threat_to_people_s,nhsl_hazard_threat_ls_threat_debris_flow_hazard_s,nhsl_hazard_threat_ls_threat_to_assets_s,nhsl_hazard_threat_ls_threat_to_buildings_s,
nhsl_hazard_threat_ls_threat_to_people_s,nhsl_hazard_threat_mh_mh_intensity_s,nhsl_hazard_threat_mh_threat_to_assets_s,nhsl_hazard_threat_mh_threat_to_buildings_s,nhsl_hazard_threat_mh_threat_to_people_s,nhsl_hazard_threat_ts_threat_to_assets_s,
nhsl_hazard_threat_ts_threat_to_buildings_s,nhsl_hazard_threat_ts_threat_to_people_s,nhsl_hazard_threat_ts_threat_ts_inundation_hazard_s,nhsl_hazard_threat_wf_threat_to_assets_s,nhsl_hazard_threat_wf_threat_to_buildings_s,
nhsl_hazard_threat_wf_threat_to_people_s,nhsl_hazard_threat_wf_threat_wf_hazard_s) DO "C:\OSGeo4W64\bin\ogr2ogr.exe" -f "gpkg" D:\workspace\data\view_outputs\%%x.gpkg PG:"host=localhost user=postgres dbname=oq_sandbox password=password" results_dsra_sim6p8_cr2022.%%x

PAUSE