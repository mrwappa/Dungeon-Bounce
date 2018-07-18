/// @description Destroy Grid if it Exists
if(ds_exists(dsDepthgrid, ds_type_grid)){
	ds_grid_destroy(dsDepthgrid);
}