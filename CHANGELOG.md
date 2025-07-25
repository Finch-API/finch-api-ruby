# Changelog

## 0.1.0-alpha.24 (2025-07-23)

Full Changelog: [v0.1.0-alpha.23...v0.1.0-alpha.24](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.23...v0.1.0-alpha.24)

### Features

* **api:** api update ([c07a9d2](https://github.com/Finch-API/finch-api-ruby/commit/c07a9d2fb3488ebec525699f3b81ba70ffc903a2))
* **api:** api update ([bd3b67a](https://github.com/Finch-API/finch-api-ruby/commit/bd3b67adfa1d4f9d507dcf6d604b0476955e38d7))


### Chores

* **internal:** version bump ([5d0dfc8](https://github.com/Finch-API/finch-api-ruby/commit/5d0dfc87e18fe72623ce1ff8154b8614e228611e))

## 0.1.0-alpha.23 (2025-07-02)

Full Changelog: [v0.1.0-alpha.22...v0.1.0-alpha.23](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.22...v0.1.0-alpha.23)

### Chores

* **internal:** version bump ([6c38e98](https://github.com/Finch-API/finch-api-ruby/commit/6c38e980c9d77d2b65b3cf5842d219d3ddc9611e))

## 0.1.0-alpha.22 (2025-06-30)

Full Changelog: [v0.1.0-alpha.21...v0.1.0-alpha.22](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.21...v0.1.0-alpha.22)

### Chores

* **internal:** allow streams to also be unwrapped on a per-row basis ([4146224](https://github.com/Finch-API/finch-api-ruby/commit/41462243c425627d1bcd8473c3fd7bea38edb3cd))
* **internal:** version bump ([89516f1](https://github.com/Finch-API/finch-api-ruby/commit/89516f1e431dc0a56f324fd3c72b1c2e4c240d05))

## 0.1.0-alpha.21 (2025-06-27)

Full Changelog: [v0.1.0-alpha.20...v0.1.0-alpha.21](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.20...v0.1.0-alpha.21)

### Bug Fixes

* **ci:** release-doctor — report correct token name ([2e72b42](https://github.com/Finch-API/finch-api-ruby/commit/2e72b425a9ef10c3a8d5a27779c1d57fb4641b9a))


### Chores

* **ci:** only run for pushes and fork pull requests ([bdaaaf0](https://github.com/Finch-API/finch-api-ruby/commit/bdaaaf064eb6be39ef8749144d75677ecb006309))
* **internal:** version bump ([99e73b3](https://github.com/Finch-API/finch-api-ruby/commit/99e73b3937ff0f4b916278c4b8c41d32efa691c7))

## 0.1.0-alpha.20 (2025-06-18)

Full Changelog: [v0.1.0-alpha.19...v0.1.0-alpha.20](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.19...v0.1.0-alpha.20)

### Features

* **api:** api update ([6a3cc47](https://github.com/Finch-API/finch-api-ruby/commit/6a3cc47713d3f52d84da946c1f86c328692a71f1))
* **api:** api update ([055b260](https://github.com/Finch-API/finch-api-ruby/commit/055b260f9607ea1c408510bf19c86390ba515b48))
* **api:** api update ([6e46c62](https://github.com/Finch-API/finch-api-ruby/commit/6e46c62b78b34d3944136bea9decd9254b9d7b2c))
* **api:** api update ([68d04c3](https://github.com/Finch-API/finch-api-ruby/commit/68d04c3e38f076254375ef4e1ea24383d7ff7aa2))


### Bug Fixes

* `to_sorbet_type` should not return branded types ([2819280](https://github.com/Finch-API/finch-api-ruby/commit/281928010fa852dd399354a4561191120e85ad00))
* **client:** fix PayStatementResponse body ([bb0bb58](https://github.com/Finch-API/finch-api-ruby/commit/bb0bb581ffc994714895363e21f461e2ec82676e))
* **client:** manual fix ([3774286](https://github.com/Finch-API/finch-api-ruby/commit/3774286f68227085e6f54396290e3de7569bba0d))
* correctly instantiate sorbet type aliases for enums and unions ([9a84b92](https://github.com/Finch-API/finch-api-ruby/commit/9a84b92df48e001ee28989703cbe8bdd9f461528))
* default content-type for text in multi-part formdata uploads should be text/plain ([2288848](https://github.com/Finch-API/finch-api-ruby/commit/2288848990739f298069c86ad90d915c1bd88c60))
* issue where we cannot mutate arrays on base model derivatives ([c4c0158](https://github.com/Finch-API/finch-api-ruby/commit/c4c01587e16d76f1c6b3f5a48414000954dc4805))
* prevent rubocop from mangling `===` to `is_a?` check ([6301929](https://github.com/Finch-API/finch-api-ruby/commit/6301929d697ae1c006446a12e6c67046e83ef132))
* sorbet types for enums, and make tapioca detection ignore `tapioca dsl` ([4aaba62](https://github.com/Finch-API/finch-api-ruby/commit/4aaba6261e6c92833ab6e46acb2e2652da843be9))


### Chores

* **ci:** enable for pull requests ([77fdc63](https://github.com/Finch-API/finch-api-ruby/commit/77fdc63fa78dd6356baf44cc3770902bfb83311b))
* **ci:** link to correct github repo ([6479e22](https://github.com/Finch-API/finch-api-ruby/commit/6479e2217a712d55aac84da1041a88efcbd4f1f2))
* **docs:** grammar improvements ([0c55f26](https://github.com/Finch-API/finch-api-ruby/commit/0c55f26abe131663cfe8e739b95154172d967085))
* force utf-8 locale via `RUBYOPT` when formatting ([2f00817](https://github.com/Finch-API/finch-api-ruby/commit/2f008175f0a18dc01a0c2b900c2e692f77b3a0ac))
* **internal:** version bump ([2b40219](https://github.com/Finch-API/finch-api-ruby/commit/2b4021961b248f64cb9c5564b4199d0c840593fd))
* refine Yard and Sorbet types and ensure linting is turned on for examples ([e0eb636](https://github.com/Finch-API/finch-api-ruby/commit/e0eb63695b803e35dd9e35a57cd0769a60db7bc7))
* **tests:** skip endpoints with basic auth ([529b41e](https://github.com/Finch-API/finch-api-ruby/commit/529b41ea3cf67b553d85e36a256cc5d6c4b13800))
* use fully qualified names for yard annotations and rbs aliases ([98866d5](https://github.com/Finch-API/finch-api-ruby/commit/98866d5133c2afb76b141045f1361705f9bac94a))
* use sorbet union aliases where available ([37cc1c2](https://github.com/Finch-API/finch-api-ruby/commit/37cc1c27968a448e7bfef8527a0f3105b476de09))
* whitespaces ([16ff9b3](https://github.com/Finch-API/finch-api-ruby/commit/16ff9b32a68eecb17c5719b354de64fe788bedd4))

## 0.1.0-alpha.19 (2025-05-16)

Full Changelog: [v0.1.0-alpha.18...v0.1.0-alpha.19](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.18...v0.1.0-alpha.19)

### Features

* **api:** api update ([e7b5270](https://github.com/Finch-API/finch-api-ruby/commit/e7b527009b74ba9ea5a0c681d12627617971ce31))


### Chores

* **internal:** version bump ([4c65aec](https://github.com/Finch-API/finch-api-ruby/commit/4c65aecc566acd9f72c296c003b12bd36acbd8ca))

## 0.1.0-alpha.18 (2025-05-16)

Full Changelog: [v0.1.0-alpha.17...v0.1.0-alpha.18](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.17...v0.1.0-alpha.18)

### Features

* **api:** api update ([c0514cb](https://github.com/Finch-API/finch-api-ruby/commit/c0514cb7518217869a5d8dab7771b9e29cf6aa1c))


### Chores

* **internal:** version bump ([a950bdc](https://github.com/Finch-API/finch-api-ruby/commit/a950bdccc42fa2c4fa7bd8297b74be17792cec34))

## 0.1.0-alpha.17 (2025-05-16)

Full Changelog: [v0.1.0-alpha.16...v0.1.0-alpha.17](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.16...v0.1.0-alpha.17)

### Features

* **api:** api update ([2cd7677](https://github.com/Finch-API/finch-api-ruby/commit/2cd76772fe2768477bb236372c94887a7f1f7022))
* **api:** api update ([db14723](https://github.com/Finch-API/finch-api-ruby/commit/db147236a70addae46834af9b8339400480a7600))
* **api:** api update ([1f0346a](https://github.com/Finch-API/finch-api-ruby/commit/1f0346afcca537802e8287a46bc2f759e909975f))
* bump default connection pool size limit to minimum of 99 ([2e0e107](https://github.com/Finch-API/finch-api-ruby/commit/2e0e1078e5a29ffb965346cd6f620743f0e4b6db))
* expose base client options as read only attributes ([289fb00](https://github.com/Finch-API/finch-api-ruby/commit/289fb00361821da703dbc9aab1db9ad8435427e3))
* expose recursive `#to_h` conversion ([03335a6](https://github.com/Finch-API/finch-api-ruby/commit/03335a6a67ce9176fecdafc79c98ddeb22210803))
* support sorbet aliases at the runtime ([beb18c8](https://github.com/Finch-API/finch-api-ruby/commit/beb18c85b5edba3d056d5d480f9fc4d19ea751a4))


### Bug Fixes

* **internal:** update gemspec name ([70eb621](https://github.com/Finch-API/finch-api-ruby/commit/70eb6214cf238d92f6b2f23969f252a5e4ce3941))


### Chores

* fix misc linting / minor issues ([9c271ed](https://github.com/Finch-API/finch-api-ruby/commit/9c271edf9374973a70e98774d1f55959181ed6be))
* **internal:** version bump ([f365e16](https://github.com/Finch-API/finch-api-ruby/commit/f365e164984a15deeb545bc07ab8a85373d840ea))


### Documentation

* rewrite much of README.md for readability ([d5fac03](https://github.com/Finch-API/finch-api-ruby/commit/d5fac031d01715a45d40fab30e856e42c601a9a9))

## 0.1.0-alpha.16 (2025-05-08)

Full Changelog: [v0.1.0-alpha.15...v0.1.0-alpha.16](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.15...v0.1.0-alpha.16)

### Chores

* **internal:** codegen related update ([cda2e4e](https://github.com/Finch-API/finch-api-ruby/commit/cda2e4e75307a0b36081a0d8d2d4fd4276dda4d1))

## 0.1.0-alpha.15 (2025-05-08)

Full Changelog: [v0.1.0-alpha.14...v0.1.0-alpha.15](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.14...v0.1.0-alpha.15)

### Chores

* **internal:** version bump ([cfbd46f](https://github.com/Finch-API/finch-api-ruby/commit/cfbd46f8c0028a594864a9801a9b848bdde13b74))

## 0.1.0-alpha.14 (2025-05-07)

Full Changelog: [v0.1.0-alpha.13...v0.1.0-alpha.14](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.13...v0.1.0-alpha.14)

### Features

* **api:** api update ([a1e63ab](https://github.com/Finch-API/finch-api-ruby/commit/a1e63ab1e953ca1a3745ec158e5cbba3336e8cc4))
* **api:** api update ([131b860](https://github.com/Finch-API/finch-api-ruby/commit/131b8600623807e6f9fe61eec0008f466ea9bf51))
* **api:** api update ([0cb263a](https://github.com/Finch-API/finch-api-ruby/commit/0cb263a792ddcd544d4b790dcb87a49af23798de))
* **api:** api update ([664ac2e](https://github.com/Finch-API/finch-api-ruby/commit/664ac2e40a5f79294e19f2536241e3e3080b35bd))
* **api:** api update ([f4d4ab0](https://github.com/Finch-API/finch-api-ruby/commit/f4d4ab0dcfb81d75e0f7fe5bee9583a616e39ac6))
* **api:** api update ([bdab477](https://github.com/Finch-API/finch-api-ruby/commit/bdab47770cdc398d71349734d214d365569311a0))


### Bug Fixes

* **internal:** ensure formatting always uses c.utf-8 locale ([4b68a42](https://github.com/Finch-API/finch-api-ruby/commit/4b68a42729fba915f1d778b306f9a1120f936012))
* **internal:** fix formatting script for macos ([549b415](https://github.com/Finch-API/finch-api-ruby/commit/549b415b8fbb8baf6de342de32798d3096085a3c))


### Chores

* accept all nd-json mimetype variants ([53a8863](https://github.com/Finch-API/finch-api-ruby/commit/53a8863036254bd052c47fb283c82798784859f6))
* always check if current page is empty in `next_page?` ([89f7522](https://github.com/Finch-API/finch-api-ruby/commit/89f7522c76cbf4cb79a171b842fdb9db8ca0fb1f))
* **internal:** codegen related update ([15d107c](https://github.com/Finch-API/finch-api-ruby/commit/15d107cee7ff974a750f1cbfa812392ac1b7fc47))
* **internal:** codegen related update ([bcaecfa](https://github.com/Finch-API/finch-api-ruby/commit/bcaecfa4b137a6a767d69ea15c77885185d8368c))
* **internal:** codegen related update ([f328b3a](https://github.com/Finch-API/finch-api-ruby/commit/f328b3a5c3ea6ffeb01186ea929b4eb6f70ef1aa))
* re-export top level models under library namespace ([e8cc430](https://github.com/Finch-API/finch-api-ruby/commit/e8cc430134d053ce8e3e5d31aea2c43270eb2ffa))
* remove Gemfile.lock during bootstrap ([6a383f0](https://github.com/Finch-API/finch-api-ruby/commit/6a383f0228803c29f1a22658821311ad3239aa97))
* reorganize type aliases ([e527e5d](https://github.com/Finch-API/finch-api-ruby/commit/e527e5d5d118f2d00611a2f790e9fcc67a4794b0))
* revert ignoring Gemfile.lock ([8abcd39](https://github.com/Finch-API/finch-api-ruby/commit/8abcd39a9a0ba36ac5e1a8b65e69762c174408e4))
* validate request option coercion correctness ([41e068d](https://github.com/Finch-API/finch-api-ruby/commit/41e068d7304cd25e4e250a2c724cb99b1bf9d9b8))


### Documentation

* **readme:** fix typo ([15960ca](https://github.com/Finch-API/finch-api-ruby/commit/15960caf4fd7cfd3596326a0605ab61a64441558))

## 0.1.0-alpha.13 (2025-04-29)

Full Changelog: [v0.1.0-alpha.12...v0.1.0-alpha.13](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.12...v0.1.0-alpha.13)

### Features

* **api:** api update ([2763397](https://github.com/Finch-API/finch-api-ruby/commit/2763397ba5fb250521e2670796fac35dab3e479d))
* **api:** api update ([e8ea0b2](https://github.com/Finch-API/finch-api-ruby/commit/e8ea0b2f1288158944ee787612d3a7840212e728))
* **api:** api update ([a8916c9](https://github.com/Finch-API/finch-api-ruby/commit/a8916c92f39f9cce9b8b1718e1651d9609b16bb8))
* **api:** api update ([b5ceabb](https://github.com/Finch-API/finch-api-ruby/commit/b5ceabb5157f3cb177c292ac1db38fe2ee2398ed))
* **api:** api update ([9f9b600](https://github.com/Finch-API/finch-api-ruby/commit/9f9b600482ef6c4c257877fab587338311202d1d))
* **api:** api update ([9c98649](https://github.com/Finch-API/finch-api-ruby/commit/9c986495c3111434466d972f42477322385a7794))
* **api:** api update ([7dcee57](https://github.com/Finch-API/finch-api-ruby/commit/7dcee57d8114c3c871e79f660bbf3d6d0aade886))
* **api:** api update ([b0bc9bb](https://github.com/Finch-API/finch-api-ruby/commit/b0bc9bbb1660ee83252d2d646af79cf55dee8ce9))
* **api:** api update ([106335f](https://github.com/Finch-API/finch-api-ruby/commit/106335f11705616838e59a848551c51ca73fec8d))


### Bug Fixes

* invalid enum names ([89de302](https://github.com/Finch-API/finch-api-ruby/commit/89de3026ca9a44c9b038caf0239d5eb1e04c17a1))


### Chores

* add generator safe directory ([7e8da29](https://github.com/Finch-API/finch-api-ruby/commit/7e8da298f02a5cfe40012daffd18ac439c426ff6))
* **internal:** annotate request options with type aliases in sorbet ([6f63db8](https://github.com/Finch-API/finch-api-ruby/commit/6f63db86081f88b411261a50028c95ca16a29e65))
* **internal:** remove unnecessary `rbi/lib` folder ([2238283](https://github.com/Finch-API/finch-api-ruby/commit/2238283c857c1a425133f6ff2f1b4f0ae8b1b84a))
* loosen rubocop rules that don't always make sense ([6699ec0](https://github.com/Finch-API/finch-api-ruby/commit/6699ec06493bd11bd15ef59bdc5c0ba0413f6dba))
* more accurate type annotations and aliases ([b6d3a80](https://github.com/Finch-API/finch-api-ruby/commit/b6d3a804a617710558f198d26947d57fdfefef14))

## 0.1.0-alpha.12 (2025-04-18)

Full Changelog: [v0.1.0-alpha.11...v0.1.0-alpha.12](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.11...v0.1.0-alpha.12)

### Features

* **api:** api update ([af6d720](https://github.com/Finch-API/finch-api-ruby/commit/af6d7200af6949087dbcac88f67c486e42295b24))


### Chores

* **internal:** version bump ([159b4f1](https://github.com/Finch-API/finch-api-ruby/commit/159b4f1064283eff6cd1d2ad70a1770d4cc7b391))

## 0.1.0-alpha.11 (2025-04-12)

Full Changelog: [v0.1.0-alpha.10...v0.1.0-alpha.11](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.10...v0.1.0-alpha.11)

### Features

* **api:** api update ([acc0a3b](https://github.com/Finch-API/finch-api-ruby/commit/acc0a3b0cdb3043411a137b2a0eade329588953b))


### Chores

* **internal:** version bump ([b96fe0d](https://github.com/Finch-API/finch-api-ruby/commit/b96fe0db00aa778a0d53520bc466d857be97637b))

## 0.1.0-alpha.10 (2025-04-11)

Full Changelog: [v0.1.0-alpha.9...v0.1.0-alpha.10](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.9...v0.1.0-alpha.10)

### Chores

* **internal:** version bump ([e724d45](https://github.com/Finch-API/finch-api-ruby/commit/e724d455d5786a4ef3015af09491c00f8b645bb1))

## 0.1.0-alpha.9 (2025-04-10)

Full Changelog: [v0.1.0-alpha.8...v0.1.0-alpha.9](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.8...v0.1.0-alpha.9)

### Features

* **api:** add models for hrs benefits individuals async responses ([7492eec](https://github.com/Finch-API/finch-api-ruby/commit/7492eec6cc2c2b3434126b3f6e79291d5badebaa))
* **api:** api update ([#136](https://github.com/Finch-API/finch-api-ruby/issues/136)) ([e1bd1b5](https://github.com/Finch-API/finch-api-ruby/commit/e1bd1b517f2ef5acba32de6490c581cde6b5a88f))
* **api:** benefits mutation API endpoints (create benefit, update benefit, enroll individual, unenroll individual) now properly return async response types ([#139](https://github.com/Finch-API/finch-api-ruby/issues/139)) ([f6b269c](https://github.com/Finch-API/finch-api-ruby/commit/f6b269cdc764e317bf5c3622bac66d625222d1db))
* use Pathname alongside raw IO handles for file uploads ([#132](https://github.com/Finch-API/finch-api-ruby/issues/132)) ([ca140ed](https://github.com/Finch-API/finch-api-ruby/commit/ca140ed7e0ba64dab0532c07e54c1fd3c74ee887))


### Bug Fixes

* **internal:** update release-please to use ruby strategy for README.md ([#137](https://github.com/Finch-API/finch-api-ruby/issues/137)) ([8a2f9b4](https://github.com/Finch-API/finch-api-ruby/commit/8a2f9b4b2ee02513530d25a86eff44ee66b6c47d))
* raise connection error for errors that result from HTTP transports ([#133](https://github.com/Finch-API/finch-api-ruby/issues/133)) ([908b8ba](https://github.com/Finch-API/finch-api-ruby/commit/908b8bab442d72e3061461b66b130f852e09949d))


### Chores

* add README docs for using solargraph when installing gem from git ([#131](https://github.com/Finch-API/finch-api-ruby/issues/131)) ([7bec93f](https://github.com/Finch-API/finch-api-ruby/commit/7bec93f44da855671b5c1be8ca11cb57f30d5cc7))
* ensure readme.md is bumped when release please updates versions ([#135](https://github.com/Finch-API/finch-api-ruby/issues/135)) ([52953bd](https://github.com/Finch-API/finch-api-ruby/commit/52953bd7d499b595d8632c67db0a2c4ec418be7d))
* fix lsp configuration file for local development ([ff3d47c](https://github.com/Finch-API/finch-api-ruby/commit/ff3d47c157613223fdafd0f953f5ab72f647a30a))
* fix typo ([48e4f10](https://github.com/Finch-API/finch-api-ruby/commit/48e4f106285126601f9b60296d589f82b775e19b))
* fix typo ([#140](https://github.com/Finch-API/finch-api-ruby/issues/140)) ([176f00b](https://github.com/Finch-API/finch-api-ruby/commit/176f00bd5ce8b85cec38d381b0c8c68a144060cf))
* **internal:** expand CI branch coverage ([#138](https://github.com/Finch-API/finch-api-ruby/issues/138)) ([e699355](https://github.com/Finch-API/finch-api-ruby/commit/e699355e6db0fbf1853fdb7d9769eec8f6043fca))
* **internal:** reduce CI branch coverage ([ff0aa81](https://github.com/Finch-API/finch-api-ruby/commit/ff0aa81561a53763a8ac6fdf373969991b193580))
* **internal:** version bump ([508a2f6](https://github.com/Finch-API/finch-api-ruby/commit/508a2f6cc90a990e2ef220e9dcf41afde861f464))
* loosen const and integer coercion rules ([#134](https://github.com/Finch-API/finch-api-ruby/issues/134)) ([954fa16](https://github.com/Finch-API/finch-api-ruby/commit/954fa162fb447df7392082c5b7676f205701b18a))

## 0.1.0-alpha.8 (2025-04-08)

Full Changelog: [v0.1.0-alpha.7...v0.1.0-alpha.8](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.7...v0.1.0-alpha.8)

### Chores

* **internal:** version bump ([2107a86](https://github.com/Finch-API/finch-api-ruby/commit/2107a86c968117d7fd7516d95f2951014e7f627c))
* make client tests look prettier ([#129](https://github.com/Finch-API/finch-api-ruby/issues/129)) ([8e81a13](https://github.com/Finch-API/finch-api-ruby/commit/8e81a13b7cb5bc7ecc384a9f9fcebd70f393dc2e))

## 0.1.0-alpha.7 (2025-04-08)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Features

* allow all valid `JSON` types to be encoded ([#119](https://github.com/Finch-API/finch-api-ruby/issues/119)) ([a67519c](https://github.com/Finch-API/finch-api-ruby/commit/a67519c5f2039cccce94f069ad1eeb40252290c1))
* support query, header, and body params that have identical names ([#118](https://github.com/Finch-API/finch-api-ruby/issues/118)) ([4fa584a](https://github.com/Finch-API/finch-api-ruby/commit/4fa584ab9a22689faa9b218f508a38188d5847d3))


### Bug Fixes

* converter should transform stringio into string where applicable ([#121](https://github.com/Finch-API/finch-api-ruby/issues/121)) ([432e28e](https://github.com/Finch-API/finch-api-ruby/commit/432e28e92b9704f9692937315a5bb129fccb9ed5))


### Chores

* always fold up method bodies in sorbet type definitions ([#125](https://github.com/Finch-API/finch-api-ruby/issues/125)) ([ff97af2](https://github.com/Finch-API/finch-api-ruby/commit/ff97af205ffe88a190d05f6ecaf63d73794b39c0))
* document LSP support in read me ([#117](https://github.com/Finch-API/finch-api-ruby/issues/117)) ([469c82c](https://github.com/Finch-API/finch-api-ruby/commit/469c82c13e10eff05dc59148195e41a8060c660f))
* **internal:** misc small improvements ([#122](https://github.com/Finch-API/finch-api-ruby/issues/122)) ([9817037](https://github.com/Finch-API/finch-api-ruby/commit/981703710cff8afcdedc0c133457f54480f0cd7e))
* **internal:** more concise handling of parameter naming conflicts ([#127](https://github.com/Finch-API/finch-api-ruby/issues/127)) ([81414ea](https://github.com/Finch-API/finch-api-ruby/commit/81414ea8318e9f7fef2fece402c9e31088a62c99))
* **internal:** rubocop rules ([#124](https://github.com/Finch-API/finch-api-ruby/issues/124)) ([7e59465](https://github.com/Finch-API/finch-api-ruby/commit/7e59465247659dac04e33e608c8308c56fea8d58))
* **internal:** run rubocop linter in parallel ([#123](https://github.com/Finch-API/finch-api-ruby/issues/123)) ([53b1156](https://github.com/Finch-API/finch-api-ruby/commit/53b1156d97634b97ad54330a2860b9cdbe996947))
* **internal:** version bump ([#113](https://github.com/Finch-API/finch-api-ruby/issues/113)) ([14b68c9](https://github.com/Finch-API/finch-api-ruby/commit/14b68c95d5b50abe3d46745a86054d81e80684c1))
* misc sdk polish ([#116](https://github.com/Finch-API/finch-api-ruby/issues/116)) ([9af5943](https://github.com/Finch-API/finch-api-ruby/commit/9af5943664bddedd57feab75609521ccfbf3afbd))
* rename confusing `Type::BooleanModel` to `Type::Boolean` ([#120](https://github.com/Finch-API/finch-api-ruby/issues/120)) ([4295175](https://github.com/Finch-API/finch-api-ruby/commit/429517572c98a1ccc9851a6cb16e875546b637ee))
* simplify internal utils ([#114](https://github.com/Finch-API/finch-api-ruby/issues/114)) ([0745cc7](https://github.com/Finch-API/finch-api-ruby/commit/0745cc74ce9ef4c0fa2c391ac62b155188110990))
* update yard comment formatting ([#126](https://github.com/Finch-API/finch-api-ruby/issues/126)) ([695363a](https://github.com/Finch-API/finch-api-ruby/commit/695363a4a80ebae5104a0a01c9427abfc277afb0))

## 0.1.0-alpha.6 (2025-04-04)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/Finch-API/finch-api-ruby/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### ⚠ BREAKING CHANGES

* bump min supported ruby version to 3.1 (oldest non-EOL) ([#105](https://github.com/Finch-API/finch-api-ruby/issues/105))
* remove top level type aliases to relocated classes ([#104](https://github.com/Finch-API/finch-api-ruby/issues/104))
* use descriptive prefixes for enum names that start with otherwise illegal identifiers ([#102](https://github.com/Finch-API/finch-api-ruby/issues/102))

### Features

* add reference links in yard ([#91](https://github.com/Finch-API/finch-api-ruby/issues/91)) ([00d19d9](https://github.com/Finch-API/finch-api-ruby/commit/00d19d904112c859a8bfdbdcbd6bff77c8a690c2))
* **api:** add new endpoints for pay statement items ([#111](https://github.com/Finch-API/finch-api-ruby/issues/111)) ([ad6dda6](https://github.com/Finch-API/finch-api-ruby/commit/ad6dda6260a68c923b8d9ef792be29cc91e3a793))
* **api:** api update ([#101](https://github.com/Finch-API/finch-api-ruby/issues/101)) ([7aec958](https://github.com/Finch-API/finch-api-ruby/commit/7aec9585751d4a5a3d5abe354ba55b80e74d5cd9))
* **api:** api update ([#94](https://github.com/Finch-API/finch-api-ruby/issues/94)) ([3ed684f](https://github.com/Finch-API/finch-api-ruby/commit/3ed684fe7a74c9e6c14b370deb3656cf732ec5aa))
* **api:** api update ([#95](https://github.com/Finch-API/finch-api-ruby/issues/95)) ([d683fa6](https://github.com/Finch-API/finch-api-ruby/commit/d683fa626a563cfd2278eca354daab3866aa163d))
* **api:** manual updates ([#112](https://github.com/Finch-API/finch-api-ruby/issues/112)) ([e2e7efb](https://github.com/Finch-API/finch-api-ruby/commit/e2e7efb47b063d3bb88708fb6b3cafe80b4ed6af))
* bump min supported ruby version to 3.1 (oldest non-EOL) ([#105](https://github.com/Finch-API/finch-api-ruby/issues/105)) ([61d708b](https://github.com/Finch-API/finch-api-ruby/commit/61d708b8e76774d4c805738e550e5e5670aac7e7))
* implement `to_json` for base model ([#99](https://github.com/Finch-API/finch-api-ruby/issues/99)) ([09448dc](https://github.com/Finch-API/finch-api-ruby/commit/09448dc9ff39e3293cb8331f35ccd5a503a02754))
* link response models to their methods in yard doc ([#93](https://github.com/Finch-API/finch-api-ruby/issues/93)) ([c9498b8](https://github.com/Finch-API/finch-api-ruby/commit/c9498b8396331ab6b67b71fbb765770f7593dc6d))
* remove top level type aliases to relocated classes ([#104](https://github.com/Finch-API/finch-api-ruby/issues/104)) ([59abb7e](https://github.com/Finch-API/finch-api-ruby/commit/59abb7e7fe034573530ba32cbd17161333a52422))
* support solargraph generics ([#108](https://github.com/Finch-API/finch-api-ruby/issues/108)) ([a9a77bd](https://github.com/Finch-API/finch-api-ruby/commit/a9a77bdc826b05c7698a92551fa29df578d836c2))


### Bug Fixes

* path interpolation template strings ([#90](https://github.com/Finch-API/finch-api-ruby/issues/90)) ([9cbfb2b](https://github.com/Finch-API/finch-api-ruby/commit/9cbfb2bfd665967e0137b221a4f068b6b02c83be))
* pre-release version string should match ruby, not semver conventions ([#107](https://github.com/Finch-API/finch-api-ruby/issues/107)) ([72c823b](https://github.com/Finch-API/finch-api-ruby/commit/72c823b4c032706dd1a45ebb062116ef56ff53f3))
* switch to github compatible markdown engine ([#87](https://github.com/Finch-API/finch-api-ruby/issues/87)) ([3f84336](https://github.com/Finch-API/finch-api-ruby/commit/3f84336be69f9d27b503329e397511edba980cae))
* use descriptive prefixes for enum names that start with otherwise illegal identifiers ([#102](https://github.com/Finch-API/finch-api-ruby/issues/102)) ([4e15ab3](https://github.com/Finch-API/finch-api-ruby/commit/4e15ab3bfa3ae7d695b35ac64901cf9835721ac9))


### Chores

* demonstrate how to make undocumented requests in README ([#106](https://github.com/Finch-API/finch-api-ruby/issues/106)) ([c316243](https://github.com/Finch-API/finch-api-ruby/commit/c316243d7f4a6b2b94f88779457fcbcff8ab6eb3))
* do not use literals for version in type definitions ([#109](https://github.com/Finch-API/finch-api-ruby/issues/109)) ([cdb9530](https://github.com/Finch-API/finch-api-ruby/commit/cdb9530afe28b75425acb6f8ee075d368a365320))
* extract error classes into own module ([#100](https://github.com/Finch-API/finch-api-ruby/issues/100)) ([82f6f32](https://github.com/Finch-API/finch-api-ruby/commit/82f6f32c6f060e5b5b7a8134aafd92c9f0c92f12))
* fix misc rubocop errors ([#88](https://github.com/Finch-API/finch-api-ruby/issues/88)) ([369e17b](https://github.com/Finch-API/finch-api-ruby/commit/369e17b85d9cf01d61a0daefdda0af03e7c4e11b))
* improve yard docs readability ([#92](https://github.com/Finch-API/finch-api-ruby/issues/92)) ([621ca2a](https://github.com/Finch-API/finch-api-ruby/commit/621ca2a7a4646d6ded45f0d2c0851a749c860a80))
* **internal:** codegen related update ([#96](https://github.com/Finch-API/finch-api-ruby/issues/96)) ([a479855](https://github.com/Finch-API/finch-api-ruby/commit/a47985553f6e4bf93a30cdd5e046a8e6019c8496))
* **internal:** version bump ([#85](https://github.com/Finch-API/finch-api-ruby/issues/85)) ([fb6870a](https://github.com/Finch-API/finch-api-ruby/commit/fb6870a0610b580e715c8011213996cfffe83d0f))
* move private classes into internal module ([#103](https://github.com/Finch-API/finch-api-ruby/issues/103)) ([ed3b639](https://github.com/Finch-API/finch-api-ruby/commit/ed3b6395d8dceb2edcecfb496c2ab046ef89ea88))
* order client variables by "importance" ([#98](https://github.com/Finch-API/finch-api-ruby/issues/98)) ([dcab107](https://github.com/Finch-API/finch-api-ruby/commit/dcab10772b4b55072685efd5602908ac52b968c2))
* relax sorbet enum parameters to allow `String` in addition to `Symbol` ([#97](https://github.com/Finch-API/finch-api-ruby/issues/97)) ([93128b8](https://github.com/Finch-API/finch-api-ruby/commit/93128b8e9d88e9e470559452f0d3aa7f578a81aa))
* use fully qualified name in sorbet README example ([#89](https://github.com/Finch-API/finch-api-ruby/issues/89)) ([bc9989c](https://github.com/Finch-API/finch-api-ruby/commit/bc9989c9f0a531a754d35829d454a9265b4524bf))
* use package name for gemspec ([#110](https://github.com/Finch-API/finch-api-ruby/issues/110)) ([9f6eebe](https://github.com/Finch-API/finch-api-ruby/commit/9f6eebe7df319daed6f7135185cc96bc99273a4a))

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
