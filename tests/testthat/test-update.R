test_that("jdate_update works as expected", {
    expect_identical(
        jdate_update(jdate("1403-02-08"), list(year = 1402, month = 3, day = 1:2)),
        jdate(c("1402-03-01", "1402-03-02"))
    )

    expect_error(jdate_update(jdate("1403-02-08"), list(m = 1)))
})

test_that("jdatetime_update works as expected", {
    dt1 <- jdatetime("1401-06-30 22:00:00", "Asia/Tehran")
    dt2 <- jdatetime("1401-01-02 01:00:00", "Asia/Tehran")
    expect_identical(
        jdatetime_update(dt1, list(second = 1:2)),
        dt1 + 1:2
    )

    expect_identical(
        jdatetime_update(dt1, list(hour = 23), ambiguous = "latest"),
        jdatetime("1401-06-30 23:00:00", "Asia/Tehran", ambiguous = "latest")
    )

    expect_identical(
        jdatetime_update(dt1, list(hour = 23), ambiguous = "latest"),
        jdatetime("1401-06-30 23:00:00", "Asia/Tehran", ambiguous = "latest")
    )

    expect_identical(
        jdatetime_update(dt2, list(hour = 0)),
        jdatetime(NA_real_, "Asia/Tehran")
    )

    expect_error(jdatetime_update(dt1, list(m = 1)))
})
