(defproject anglican-jupyter "0.0.1"
  :description "Sets up an anglican environment with jupyter support."
  :dependencies [[org.clojure/clojure "1.11.4"]
                 [nstools "0.2.4"]
                 [anglican "1.0.0"]
                 [clojupyter "0.4.332"]
                 [incanter "1.9.3"]]
  :aliases	{"clojupyter" ["run" "-m" "clojupyter.cmdline"]})
