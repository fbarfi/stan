data { 
  int d_int;
  real d_real;
}
transformed data {
  int transformed_data_int;
  real transformed_data_real;

  transformed_data_real = trigamma(d_int);
  transformed_data_real = trigamma(d_real);
}
parameters {
  real p_real;
  real y_p;
}
transformed parameters {
  real transformed_param_real;

  transformed_param_real = trigamma(d_int);
  transformed_param_real = trigamma(d_real);
  transformed_param_real = trigamma(p_real);
}
model {  
  y_p ~ normal(0,1);
}
