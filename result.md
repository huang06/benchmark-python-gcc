| Benchmark               | py39-gcc8 | py39-gcc12            | py310-gcc8            | py310-gcc12            |
|-------------------------|:---------:|:---------------------:|:---------------------:|:----------------------:|
| 2to3                    | 761 ms    | not significant       | not significant       | 739 ms: 1.03x faster   |
| chameleon               | 18.9 ms   | not significant       | 17.0 ms: 1.11x faster | 17.1 ms: 1.11x faster  |
| chaos                   | 211 ms    | not significant       | not significant       | 201 ms: 1.05x faster   |
| deltablue               | 15.6 ms   | not significant       | 16.6 ms: 1.06x slower | not significant        |
| django_template         | 92.2 ms   | not significant       | 99.9 ms: 1.08x slower | not significant        |
| dulwich_log             | 210 ms    | not significant       | 189 ms: 1.11x faster  | not significant        |
| fannkuch                | 762 ms    | not significant       | 729 ms: 1.04x faster  | not significant        |
| float                   | 223 ms    | not significant       | 195 ms: 1.14x faster  | 204 ms: 1.09x faster   |
| genshi_text             | 60.7 ms   | not significant       | 59.6 ms: 1.02x faster | 58.1 ms: 1.05x faster  |
| go                      | 443 ms    | not significant       | 379 ms: 1.17x faster  | 386 ms: 1.15x faster   |
| hexiom                  | 19.6 ms   | 19.0 ms: 1.03x faster | 18.9 ms: 1.04x faster | 18.8 ms: 1.05x faster  |
| html5lib                | 171 ms    | not significant       | 159 ms: 1.07x faster  | not significant        |
| json_loads              | 50.7 us   | 47.0 us: 1.08x faster | not significant       | 47.2 us: 1.08x faster  |
| logging_silent          | 403 ns    | not significant       | not significant       | 372 ns: 1.09x faster   |
| mako                    | 35.1 ms   | not significant       | 32.0 ms: 1.10x faster | 30.6 ms: 1.15x faster  |
| nbody                   | 261 ms    | 237 ms: 1.10x faster  | not significant       | 226 ms: 1.15x faster   |
| nqueens                 | 196 ms    | 187 ms: 1.05x faster  | 183 ms: 1.07x faster  | 185 ms: 1.06x faster   |
| pathlib                 | 40.7 ms   | not significant       | 46.1 ms: 1.13x slower | 44.7 ms: 1.10x slower  |
| pickle                  | 21.8 us   | 18.8 us: 1.16x faster | not significant       | 18.7 us: 1.16x faster  |
| pickle_dict             | 45.9 us   | not significant       | 47.7 us: 1.04x slower | 48.8 us: 1.06x slower  |
| pickle_list             | 7.35 us   | 6.85 us: 1.07x faster | not significant       | not significant        |
| pickle_pure_python      | 962 us    | not significant       | not significant       | 918 us: 1.05x faster   |
| pyflate                 | 1.11 sec  | not significant       | not significant       | 1.06 sec: 1.05x faster |
| python_startup          | 37.6 ms   | not significant       | 38.2 ms: 1.01x slower | not significant        |
| raytrace                | 901 ms    | not significant       | 873 ms: 1.03x faster  | 839 ms: 1.07x faster   |
| regex_dna               | 268 ms    | 257 ms: 1.05x faster  | not significant       | not significant        |
| regex_v8                | 40.4 ms   | not significant       | 42.5 ms: 1.05x slower | 39.0 ms: 1.03x faster  |
| richards                | 149 ms    | not significant       | 158 ms: 1.06x slower  | 159 ms: 1.06x slower   |
| scimark_fft             | 619 ms    | 603 ms: 1.03x faster  | not significant       | not significant        |
| scimark_monte_carlo     | 214 ms    | 200 ms: 1.07x faster  | not significant       | 189 ms: 1.14x faster   |
| scimark_sparse_mat_mult | 9.90 ms   | 8.98 ms: 1.10x faster | not significant       | 9.22 ms: 1.07x faster  |
| spectral_norm           | 255 ms    | not significant       | 272 ms: 1.07x slower  | not significant        |
| sqlalchemy_declarative  | 275 ms    | not significant       | not significant       | 264 ms: 1.04x faster   |
| sqlalchemy_imperative   | 59.8 ms   | not significant       | 50.4 ms: 1.19x faster | 55.7 ms: 1.08x faster  |
| sqlite_synth            | 5.94 us   | not significant       | 5.20 us: 1.14x faster | 5.20 us: 1.14x faster  |
| sympy_integrate         | 38.8 ms   | 40.9 ms: 1.05x slower | 40.3 ms: 1.04x slower | 41.2 ms: 1.06x slower  |
| sympy_str               | 550 ms    | not significant       | 573 ms: 1.04x slower  | not significant        |
| telco                   | 12.3 ms   | not significant       | 14.0 ms: 1.14x slower | 13.2 ms: 1.07x slower  |
| tornado_http            | 734 ms    | not significant       | not significant       | 700 ms: 1.05x faster   |
| unpack_sequence         | 96.7 ns   | not significant       | 91.6 ns: 1.06x faster | 89.5 ns: 1.08x faster  |
| unpickle                | 27.4 us   | not significant       | 28.8 us: 1.05x slower | not significant        |
| unpickle_list           | 8.15 us   | not significant       | not significant       | 8.70 us: 1.07x slower  |
| unpickle_pure_python    | 758 us    | 679 us: 1.12x faster  | 659 us: 1.15x faster  | 594 us: 1.27x faster   |
| xml_etree_parse         | 276 ms    | 253 ms: 1.09x faster  | 260 ms: 1.06x faster  | 255 ms: 1.08x faster   |
| xml_etree_iterparse     | 185 ms    | not significant       | 200 ms: 1.08x slower  | 200 ms: 1.08x slower   |
| Geometric mean          | (ref)     | 1.01x faster          | 1.01x faster          | 1.03x faster           |

Benchmark hidden because not significant (16): crypto_pyaes, genshi_xml, json_dumps, logging_format, logging_simple, meteor_contest, pidigits, python_startup_no_site, regex_compile, regex_effbot, scimark_lu, scimark_sor, sympy_expand, sympy_sum, xml_etree_generate, xml_etree_process
