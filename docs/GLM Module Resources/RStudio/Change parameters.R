# See if it works
# run_glm("...bananas.../Kinneret97")
run_glm()
# Load the whole namelist
namelist<-read_nml("glm3.nml")
# Have a look at any one parameter
get_nml_value(namelist,"csv_point_vars")
get_nml_value(namelist,"num_days")
# Change a parameter in R
namelist <- set_nml(namelist, arg_name = "csv_point_nlevs", arg_val = 3)
namelist <- set_nml(namelist, arg_name = "csv_point_at",    arg_val = c(1,2,3))
# Check whether you did anything
get_nml_value(namelist, 'csv_point_nlevs')
get_nml_value(namelist, 'csv_point_at')
# Write these changes from R to the file
write_nml(glm_nml = namelist, file = "glm3.nml")
# Rerun the model
run_glm()