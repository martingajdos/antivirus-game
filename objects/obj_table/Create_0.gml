// Constants
MODEL_NAME      =   "tablemodel.gmmod";

// Load D3D model
model           =   d3d_model_create();
d3d_model_load(model, MODEL_NAME);

// Add collision mask
collision_mask  =   p3dc_begin_model();
p3dc_add_model(MODEL_NAME, 0, 0, 0);
p3dc_add_floor(0, 0, 6, 32, 32, 6);
p3dc_end_model();

