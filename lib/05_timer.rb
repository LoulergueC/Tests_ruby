def time_string seconds
    h = seconds.divmod(3600)
    m = h[1].divmod(60)
    s = m[1]
    "%02d:%02d:%02d" % [h[0], m[0], s]
end