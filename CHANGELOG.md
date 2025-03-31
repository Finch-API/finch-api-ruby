# Changelog

## 0.1.0-alpha.5 (2025-03-31)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Chores

* **internal:** version bump ([#80](https://github.com/Finch-API/finch-api-ruby/issues/80)) ([9dc9569](https://github.com/Finch-API/finch-api-ruby/commit/9dc9569385307fa31597a0da5ca0f5819925b3f7))
* more accurate type annotations for SDK internals ([#83](https://github.com/Finch-API/finch-api-ruby/issues/83)) ([9cfaabd](https://github.com/Finch-API/finch-api-ruby/commit/9cfaabdde3e58f17d09edbc304f3810618d722af))
* relocate internal modules ([#82](https://github.com/Finch-API/finch-api-ruby/issues/82)) ([899a7c0](https://github.com/Finch-API/finch-api-ruby/commit/899a7c0fdf4968dcc552fb5dedfb0c5809562b06))
* update readme ([#84](https://github.com/Finch-API/finch-api-ruby/issues/84)) ([e868827](https://github.com/Finch-API/finch-api-ruby/commit/e868827d1be8683eaa7fb677e32dd189b2ec08c3))

## 0.1.0-alpha.4 (2025-03-31)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### Features

* **api:** api update ([#79](https://github.com/Finch-API/finch-api-ruby/issues/79)) ([382667d](https://github.com/Finch-API/finch-api-ruby/commit/382667da8c8b9fd9dca9c8be1e903a26f8c39d3a))
* **internal:** converter interface should recurse without schema ([#77](https://github.com/Finch-API/finch-api-ruby/issues/77)) ([54c0c14](https://github.com/Finch-API/finch-api-ruby/commit/54c0c146c432894dafd73fbe17ad2fe7a931a2d5))


### Chores

* **internal:** minor refactoring of utils ([#76](https://github.com/Finch-API/finch-api-ruby/issues/76)) ([9b88b83](https://github.com/Finch-API/finch-api-ruby/commit/9b88b83a6775fb547dceb5ed3c54c67f47587609))
* **internal:** version bump ([#74](https://github.com/Finch-API/finch-api-ruby/issues/74)) ([5b79b2c](https://github.com/Finch-API/finch-api-ruby/commit/5b79b2c834848a5e4413f52e9e3383205f51b5d7))
* remove unnecessary & confusing module ([#78](https://github.com/Finch-API/finch-api-ruby/issues/78)) ([c8fe96f](https://github.com/Finch-API/finch-api-ruby/commit/c8fe96f6528184a2d15385e2607be024329c5c6d))

## 0.1.0-alpha.3 (2025-03-27)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Features

* **api:** api update ([#73](https://github.com/Finch-API/finch-api-ruby/issues/73)) ([425d0dc](https://github.com/Finch-API/finch-api-ruby/commit/425d0dc12f2a7d5460eb2141eb7e616a96db6ef5))


### Chores

* **internal:** version bump ([#70](https://github.com/Finch-API/finch-api-ruby/issues/70)) ([36c3b7e](https://github.com/Finch-API/finch-api-ruby/commit/36c3b7eb4f2d332351e23b41707c871b44fa064d))
* more aggressive tapioca detection logic for skipping compiler introspection ([#72](https://github.com/Finch-API/finch-api-ruby/issues/72)) ([20b843f](https://github.com/Finch-API/finch-api-ruby/commit/20b843f39d94b09c124db19abf6e931017cdef58))

## 0.1.0-alpha.2 (2025-03-25)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### ⚠ BREAKING CHANGES

* use tagged enums in sorbet type definitions ([#57](https://github.com/Finch-API/finch-api-ruby/issues/57))
* support `for item in stream` style iteration on `Stream`s ([#55](https://github.com/Finch-API/finch-api-ruby/issues/55))
* **model:** base model should recursively store coerced base models ([#44](https://github.com/Finch-API/finch-api-ruby/issues/44))

### Features

* add jsonl support ([#10](https://github.com/Finch-API/finch-api-ruby/issues/10)) ([74f6a63](https://github.com/Finch-API/finch-api-ruby/commit/74f6a630c57dfbc065fe3dccc20d2a0912241e58))
* add SKIP_BREW env var to ./scripts/bootstrap ([#14](https://github.com/Finch-API/finch-api-ruby/issues/14)) ([6d5ad33](https://github.com/Finch-API/finch-api-ruby/commit/6d5ad336c49d7492c9a1382cd0eb6e4938a9630d))
* **api:** api update ([#69](https://github.com/Finch-API/finch-api-ruby/issues/69)) ([1374a6e](https://github.com/Finch-API/finch-api-ruby/commit/1374a6ea4304b03f6ba6a7874ad920baf86d2f6c))
* consistently accept `AnyHash` types in parameter positions in sorbet ([#62](https://github.com/Finch-API/finch-api-ruby/issues/62)) ([8a5cbf7](https://github.com/Finch-API/finch-api-ruby/commit/8a5cbf70086cb9b903b8b54594995332fdf12a29))
* prevent tapioca from introspecting the gem internals ([#61](https://github.com/Finch-API/finch-api-ruby/issues/61)) ([a7e45cc](https://github.com/Finch-API/finch-api-ruby/commit/a7e45cc2a440752eba32881faeb37b3192634ce7))
* support `for item in stream` style iteration on `Stream`s ([#55](https://github.com/Finch-API/finch-api-ruby/issues/55)) ([c59a90c](https://github.com/Finch-API/finch-api-ruby/commit/c59a90c57b184e478192f899a6c2f0b10395f548))
* support client level methods ([#18](https://github.com/Finch-API/finch-api-ruby/issues/18)) ([92bf05c](https://github.com/Finch-API/finch-api-ruby/commit/92bf05cf13896ff88e36de59a7c780835686f75f))
* support jsonl uploads ([#32](https://github.com/Finch-API/finch-api-ruby/issues/32)) ([fd8bb80](https://github.com/Finch-API/finch-api-ruby/commit/fd8bb80dd8174a3da2e715313e5348b6ad61e75f))
* support streaming uploads ([#25](https://github.com/Finch-API/finch-api-ruby/issues/25)) ([5adeadb](https://github.com/Finch-API/finch-api-ruby/commit/5adeadbe7a0cbeb213d9a37cebe6b8c04288c98a))
* use tagged enums in sorbet type definitions ([#57](https://github.com/Finch-API/finch-api-ruby/issues/57)) ([6956ce9](https://github.com/Finch-API/finch-api-ruby/commit/6956ce97a9b6d7298bc8264914cd0c121d5a3400))


### Bug Fixes

* bad documentation url for gemdocs.org ([#43](https://github.com/Finch-API/finch-api-ruby/issues/43)) ([10c313f](https://github.com/Finch-API/finch-api-ruby/commit/10c313ffd786e8640c6dfb1665664157ea9a32a9))
* enums should only coerce matching symbols into strings ([#26](https://github.com/Finch-API/finch-api-ruby/issues/26)) ([d0260a3](https://github.com/Finch-API/finch-api-ruby/commit/d0260a33499410c0e267b01b8583d2d072b7ae61))
* label optional keyword arguments in *.rbs type definitions ([#53](https://github.com/Finch-API/finch-api-ruby/issues/53)) ([66ba596](https://github.com/Finch-API/finch-api-ruby/commit/66ba5968ed917bc848cb3cb79223cb3f0eb5489a))
* **model:** base model should recursively store coerced base models ([#44](https://github.com/Finch-API/finch-api-ruby/issues/44)) ([5b67ef6](https://github.com/Finch-API/finch-api-ruby/commit/5b67ef6d68c5d9729c5e1b44dd2b00a05a987342))
* pages should be able to accept non-converter models ([#65](https://github.com/Finch-API/finch-api-ruby/issues/65)) ([1927323](https://github.com/Finch-API/finch-api-ruby/commit/1927323200a74179fde0a73a976eeea2096b1969))
* rectify a mistake where wrong lines were chosen during rebase ([#19](https://github.com/Finch-API/finch-api-ruby/issues/19)) ([7ff758e](https://github.com/Finch-API/finch-api-ruby/commit/7ff758e5ccd442f8fe4843f70025f7c302e6d1ba))
* resolve tapioca derived sorbet errors ([#56](https://github.com/Finch-API/finch-api-ruby/issues/56)) ([0b1c07a](https://github.com/Finch-API/finch-api-ruby/commit/0b1c07a2abd333fc000f785066987fe951f7bf59))
* sorbet class aliases are not type aliases ([#52](https://github.com/Finch-API/finch-api-ruby/issues/52)) ([f2abbe9](https://github.com/Finch-API/finch-api-ruby/commit/f2abbe9fb129d81f6b345f522af1ff36a0044786))
* yard example tag formatting ([#59](https://github.com/Finch-API/finch-api-ruby/issues/59)) ([de42306](https://github.com/Finch-API/finch-api-ruby/commit/de42306ed5186b7031889b725609b28b8b04b35c))


### Chores

* `BaseModel` fields that are `BaseModel` typed should also accept `Hash` ([#58](https://github.com/Finch-API/finch-api-ruby/issues/58)) ([a519092](https://github.com/Finch-API/finch-api-ruby/commit/a519092120ad92d1ad8bb1fa1cdc18902b3842c4))
* add `[@yieldparam](https://github.com/yieldparam)` to yard doc ([#48](https://github.com/Finch-API/finch-api-ruby/issues/48)) ([07be571](https://github.com/Finch-API/finch-api-ruby/commit/07be5719c8710e6b876ae13593daf13d744800ee))
* add `sorbet` section to README ([#15](https://github.com/Finch-API/finch-api-ruby/issues/15)) ([353250b](https://github.com/Finch-API/finch-api-ruby/commit/353250b0ba9474617d2c844eb01d9753405b87ca))
* add example directory ([#51](https://github.com/Finch-API/finch-api-ruby/issues/51)) ([f7dbdf7](https://github.com/Finch-API/finch-api-ruby/commit/f7dbdf7c341bd6622b5caa66abc010218ff7669b))
* add more examples to README.md ([#16](https://github.com/Finch-API/finch-api-ruby/issues/16)) ([00b0b73](https://github.com/Finch-API/finch-api-ruby/commit/00b0b73708af0e39e23f03028bb4d32250c07cf4))
* add most doc strings to rbi type definitions ([#33](https://github.com/Finch-API/finch-api-ruby/issues/33)) ([e366baa](https://github.com/Finch-API/finch-api-ruby/commit/e366baa122865a1734c9e17bba6a0531c115c1a3))
* add type annotations for enum and union member listing methods ([#60](https://github.com/Finch-API/finch-api-ruby/issues/60)) ([414af1a](https://github.com/Finch-API/finch-api-ruby/commit/414af1a8c761ded84a26cd5ad1d85838fe372cdf))
* bump lockfile ([#7](https://github.com/Finch-API/finch-api-ruby/issues/7)) ([a644446](https://github.com/Finch-API/finch-api-ruby/commit/a64444614bbee1dd6cb93d1f5ba3440eb15e192c))
* disable dangerous rubocop auto correct rule ([#67](https://github.com/Finch-API/finch-api-ruby/issues/67)) ([1d98cb0](https://github.com/Finch-API/finch-api-ruby/commit/1d98cb0aabcaa378bc08b87e54ae9bdb476d077e))
* disable overloads in `*.rbs` definitions for readable LSP errors ([#54](https://github.com/Finch-API/finch-api-ruby/issues/54)) ([2d71742](https://github.com/Finch-API/finch-api-ruby/commit/2d717426f7371291b3d6cde32f63d179a3ba5da0))
* disable unnecessary linter rules for sorbet manifests ([#47](https://github.com/Finch-API/finch-api-ruby/issues/47)) ([50e9efe](https://github.com/Finch-API/finch-api-ruby/commit/50e9efea70eb91f9cb8fb1e39205ca16009fefcc))
* do not label modules as abstract ([#42](https://github.com/Finch-API/finch-api-ruby/issues/42)) ([f99868b](https://github.com/Finch-API/finch-api-ruby/commit/f99868b7b10d354a735276e8f2d5dba226daf35c))
* document Client's concurrency capability ([#46](https://github.com/Finch-API/finch-api-ruby/issues/46)) ([24aba19](https://github.com/Finch-API/finch-api-ruby/commit/24aba192cb119c823905ee9296f65870ce697aa5))
* document union variants in yard doc ([#37](https://github.com/Finch-API/finch-api-ruby/issues/37)) ([623ce81](https://github.com/Finch-API/finch-api-ruby/commit/623ce8130371bb406cd138fb07757932a2522464))
* ensure doc strings for rbi method arguments ([#34](https://github.com/Finch-API/finch-api-ruby/issues/34)) ([a592cdf](https://github.com/Finch-API/finch-api-ruby/commit/a592cdf6fea4bab81c60e25ea1149a38b3e2ad75))
* error fields are now mutable in keeping with rest of SDK ([#36](https://github.com/Finch-API/finch-api-ruby/issues/36)) ([99d4319](https://github.com/Finch-API/finch-api-ruby/commit/99d43196e06882dfc973a70a2e5294cd5d2c28dc))
* fused enum should use faster internal iteration by default ([#22](https://github.com/Finch-API/finch-api-ruby/issues/22)) ([c4ee170](https://github.com/Finch-API/finch-api-ruby/commit/c4ee1708018b48967978e1a94c882e15bc920aa5))
* generate better supported rbi signatures ([#12](https://github.com/Finch-API/finch-api-ruby/issues/12)) ([e093ce4](https://github.com/Finch-API/finch-api-ruby/commit/e093ce41d1d87e0848f49cde7e5eac8e8d11bbe5))
* ignore some spurious linter warnings and formatting changes ([#45](https://github.com/Finch-API/finch-api-ruby/issues/45)) ([2dce5e9](https://github.com/Finch-API/finch-api-ruby/commit/2dce5e92fca8b7a9f70ddee082390d0fbb470d21))
* improve documentation ([#24](https://github.com/Finch-API/finch-api-ruby/issues/24)) ([1896856](https://github.com/Finch-API/finch-api-ruby/commit/1896856a88362566dd81a1afed4e97096b62c7d6))
* improve rbi typedef for page classes ([#29](https://github.com/Finch-API/finch-api-ruby/issues/29)) ([ac6b999](https://github.com/Finch-API/finch-api-ruby/commit/ac6b9994ed71d42702133590144fe5a22c273111))
* **internal:** add sorbet config for SDK local development ([#50](https://github.com/Finch-API/finch-api-ruby/issues/50)) ([bb63811](https://github.com/Finch-API/finch-api-ruby/commit/bb6381194d39b2794921cea5c885be5157bd1163))
* **internal:** codegen related update ([#17](https://github.com/Finch-API/finch-api-ruby/issues/17)) ([b0d79ac](https://github.com/Finch-API/finch-api-ruby/commit/b0d79ac02e99852b1ab14892a0f14fa275105819))
* **internal:** codegen related update ([#20](https://github.com/Finch-API/finch-api-ruby/issues/20)) ([d715c02](https://github.com/Finch-API/finch-api-ruby/commit/d715c0202babd8cdd2911f8cd390611865c0955f))
* **internal:** remove extra empty newlines ([#30](https://github.com/Finch-API/finch-api-ruby/issues/30)) ([d8c970e](https://github.com/Finch-API/finch-api-ruby/commit/d8c970e6728b8a61c13e518850776d75cbdcece8))
* **internal:** version bump ([#4](https://github.com/Finch-API/finch-api-ruby/issues/4)) ([1e24a6c](https://github.com/Finch-API/finch-api-ruby/commit/1e24a6c308f2bda2dfc8d253bad8c0e7c007d149))
* mark non-inheritable SDK internal classes as final ([#39](https://github.com/Finch-API/finch-api-ruby/issues/39)) ([69bb3a3](https://github.com/Finch-API/finch-api-ruby/commit/69bb3a3c0831b8940709dd3b14115fefbcc7508e))
* modify sorbet initializers to better support auto-completion ([#13](https://github.com/Finch-API/finch-api-ruby/issues/13)) ([3271474](https://github.com/Finch-API/finch-api-ruby/commit/327147477a34f2f0bd0e0e6b813a2646493ca2df))
* more readable output when tests fail ([#68](https://github.com/Finch-API/finch-api-ruby/issues/68)) ([7af6e91](https://github.com/Finch-API/finch-api-ruby/commit/7af6e913d4c8acbac489d14d33ed3df443e9fd7e))
* move examples into tests ([#9](https://github.com/Finch-API/finch-api-ruby/issues/9)) ([4ba4a39](https://github.com/Finch-API/finch-api-ruby/commit/4ba4a39da10518ea5f4ec13f35d2ffcdac9931dc))
* pagination ([#21](https://github.com/Finch-API/finch-api-ruby/issues/21)) ([e95562f](https://github.com/Finch-API/finch-api-ruby/commit/e95562f4be1b85f0c5de44037eb0c64ac0c66dde))
* recursively accept `AnyHash` for `BaseModel`s in arrays and hashes ([#63](https://github.com/Finch-API/finch-api-ruby/issues/63)) ([727a5b5](https://github.com/Finch-API/finch-api-ruby/commit/727a5b5a14aa309e4db8a21fac8689f8924863df))
* reduce verbosity in type declarations ([#66](https://github.com/Finch-API/finch-api-ruby/issues/66)) ([47de683](https://github.com/Finch-API/finch-api-ruby/commit/47de6833d2762936d4dd2be7f21466c1a7f2d6b1))
* refactor BasePage to have initializer ([#28](https://github.com/Finch-API/finch-api-ruby/issues/28)) ([0b49043](https://github.com/Finch-API/finch-api-ruby/commit/0b49043f7bcd2fa9cc522ca65945634add1338a8))
* remove stale thread local checks ([#27](https://github.com/Finch-API/finch-api-ruby/issues/27)) ([3fbfa6c](https://github.com/Finch-API/finch-api-ruby/commit/3fbfa6cf8802942f58d331a1193b9ed537f5669d))
* rename misleading variable ([#8](https://github.com/Finch-API/finch-api-ruby/issues/8)) ([0b3397f](https://github.com/Finch-API/finch-api-ruby/commit/0b3397f11d90ca29a56b7fa7f162d96edf07be06))
* sdk client internal refactoring ([#41](https://github.com/Finch-API/finch-api-ruby/issues/41)) ([a0e8fe9](https://github.com/Finch-API/finch-api-ruby/commit/a0e8fe940fbeab06cfd62c3faea8b32b93500234))
* sdk internal updates ([#31](https://github.com/Finch-API/finch-api-ruby/issues/31)) ([74a9ff6](https://github.com/Finch-API/finch-api-ruby/commit/74a9ff6839ce6c108514d1197987e5a6223a571e))
* slightly more consistent type definition layout ([#38](https://github.com/Finch-API/finch-api-ruby/issues/38)) ([cf75aa6](https://github.com/Finch-API/finch-api-ruby/commit/cf75aa6659727bf0f0c429df3e2cdb51ccb49541))
* support different EOLs in streaming ([#11](https://github.com/Finch-API/finch-api-ruby/issues/11)) ([4eb4cc3](https://github.com/Finch-API/finch-api-ruby/commit/4eb4cc36954eeb5fb39beee0d335d573cddd11b6))
* switch to prettier looking sorbet annotations ([#64](https://github.com/Finch-API/finch-api-ruby/issues/64)) ([797cdf7](https://github.com/Finch-API/finch-api-ruby/commit/797cdf7ff1377392296b80b8681447b47de0c3a9))
* touch up sdk usage examples ([#35](https://github.com/Finch-API/finch-api-ruby/issues/35)) ([f17f349](https://github.com/Finch-API/finch-api-ruby/commit/f17f349ca92249203baa08738ed0f6100c280f6c))
* update custom timeout header name ([#6](https://github.com/Finch-API/finch-api-ruby/issues/6)) ([e19278e](https://github.com/Finch-API/finch-api-ruby/commit/e19278e42797781e1ed237688abe62a2b9e85b4c))
* use generics instead of overloading for sorbet type definitions ([#40](https://github.com/Finch-API/finch-api-ruby/issues/40)) ([e8e32c7](https://github.com/Finch-API/finch-api-ruby/commit/e8e32c72394607c86788de884fa2ed8335e4d8bf))
* use multi-line formatting style for really long lines ([#49](https://github.com/Finch-API/finch-api-ruby/issues/49)) ([96c2c73](https://github.com/Finch-API/finch-api-ruby/commit/96c2c73fa1e7994dffdbeabafee3c8dc93c0a46d))

## 0.1.0-alpha.1 (2025-03-05)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/Finch-API/finch-api-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** manual updates ([#1](https://github.com/Finch-API/finch-api-ruby/issues/1)) ([4273cd2](https://github.com/Finch-API/finch-api-ruby/commit/4273cd2fd27dfb2c0d3c4f73ec0169ff1dfbd501))
