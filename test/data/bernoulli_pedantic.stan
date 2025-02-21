data {
  int<lower=0> N;
  int<lower=0,upper=1> y[N];
}
parameters {
  real<lower=0,upper=1> theta;
}
model {
  // no prior on theta - should produce a warning
  y ~ bernoulli(theta);
}
