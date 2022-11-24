test_that(
  "The accel_plot() returns a ggplot object after spectral_signature()",
  {
    data(ukb_accel)
    x <- ukb_accel
    spectral_signature(x[1:100, ], take_log = TRUE)
    p <- accel_plot(x[1:100, ])
    expect_true(inherits(p, "gg"))
  }
)
