Module: regular-expressions-test-suite
Author: Carl Gay

define test regex-search-benchmark (tags: #("benchmark"))
  assert-true(#t);
  let regex = compile-regex("a");
  for (i from 1 to 100000)
    regex-search(regex, "a");
  end;
end test regex-search-benchmark;

define suite regular-expressions-benchmarks ()
  test regex-search-benchmark;
end;
