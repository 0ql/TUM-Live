module github.com/joschahenningsen/TUM-Live

go 1.18

require (
	github.com/RBG-TUM/CAMPUSOnline v0.0.0-20221007083857-e8fe85015e85
	github.com/RBG-TUM/go-anel-pwrctrl v1.0.0
	github.com/RBG-TUM/go-extron v0.0.0-20210921110740-7a8f40430769
	github.com/antchfx/xmlquery v1.3.12
	github.com/dgraph-io/ristretto v0.1.0
	github.com/gabstv/melody v1.0.2
	github.com/getsentry/sentry-go v0.13.0
	github.com/gin-contrib/gzip v0.0.6
	github.com/gin-gonic/gin v1.8.1
	github.com/go-asn1-ber/asn1-ber v1.5.4 // indirect
	github.com/go-gormigrate/gormigrate/v2 v2.0.2
	github.com/go-ldap/ldap/v3 v3.4.4
	github.com/go-sql-driver/mysql v1.6.0
	github.com/golang-jwt/jwt/v4 v4.4.2
	github.com/golang/glog v1.0.0 // indirect
	github.com/gorilla/websocket v1.5.0 // indirect
	github.com/jinzhu/now v1.1.5
	// todo: handle breaking changes in bluemomday.
	github.com/microcosm-cc/bluemonday v1.0.18
	github.com/pkg/profile v1.6.0
	github.com/robfig/cron/v3 v3.0.1
	github.com/russross/blackfriday/v2 v2.1.0
	github.com/satori/go.uuid v1.2.0
	github.com/sirupsen/logrus v1.9.0
	github.com/spf13/viper v1.13.0
	golang.org/x/crypto v0.0.0-20220926161630-eccd6366d1be
	google.golang.org/genproto v0.0.0-20220930163606-c98284e70a91 // indirect
	google.golang.org/grpc v1.49.0
	google.golang.org/protobuf v1.28.1
	gorm.io/driver/mysql v1.3.6
	gorm.io/gorm v1.23.10
	mvdan.cc/xurls/v2 v2.4.0
)

require (
	github.com/Masterminds/sprig/v3 v3.2.2
	github.com/RBG-TUM/commons v0.0.0-20220406105618-030c095f6a1b
	github.com/crewjam/saml v0.4.8
	github.com/golang/mock v1.6.0
	github.com/icholy/digest v0.1.15
	github.com/joschahenningsen/TUM-Live/worker v0.0.0-20220930105547-bac0fcda9958
	github.com/stretchr/testify v1.8.0
	github.com/u2takey/go-utils v0.3.1
)

require github.com/matthiasreumann/gomino v0.0.2

require (
	// this version works - newer commits may have breaking changes
	// github.com/Azure/go-ntlmssp v0.0.0-20211209120228-48547f28849e // indirect
	github.com/Azure/go-ntlmssp v0.0.0-20220621081337-cb9428e4ac1e // indirect
	github.com/Masterminds/goutils v1.1.1 // indirect
	github.com/Masterminds/semver/v3 v3.1.1 // indirect
	github.com/antchfx/xpath v1.2.1 // indirect
	github.com/aymerick/douceur v0.2.0 // indirect
	github.com/beevik/etree v1.1.0 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/crewjam/httperr v0.2.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dustin/go-humanize v1.0.0 // indirect
	github.com/fsnotify/fsnotify v1.5.4 // indirect
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/go-playground/locales v0.14.0 // indirect
	github.com/go-playground/universal-translator v0.18.0 // indirect
	github.com/go-playground/validator/v10 v10.11.1 // indirect
	github.com/goccy/go-json v0.9.11 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/google/uuid v1.3.0
	github.com/gorilla/css v1.0.0 // indirect
	github.com/hashicorp/hcl v1.0.0 // indirect
	github.com/huandu/xstrings v1.3.2 // indirect
	github.com/imdario/mergo v0.3.13 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/jonboulle/clockwork v0.3.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/magiconair/properties v1.8.6 // indirect
	github.com/mattermost/xml-roundtrip-validator v0.1.0 // indirect
	github.com/mattn/go-isatty v0.0.16 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pelletier/go-toml v1.9.5 // indirect
	github.com/pelletier/go-toml/v2 v2.0.5 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	// This version works. Breaking changes, update with care:
	// github.com/russellhaering/goxmldsig v1.1.1 // indirect
	github.com/russellhaering/goxmldsig v1.1.1 // indirect
	github.com/shopspring/decimal v1.3.1 // indirect
	github.com/spf13/afero v1.9.2 // indirect
	github.com/spf13/cast v1.5.0 // indirect
	github.com/spf13/jwalterweatherman v1.1.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/subosito/gotenv v1.4.1 // indirect
	github.com/ugorji/go/codec v1.2.7 // indirect
	golang.org/x/net v0.0.0-20221002022538-bcab6841153b // indirect
	golang.org/x/sys v0.0.0-20220928140112-f11e5e49a4ec // indirect
	golang.org/x/text v0.3.7 // indirect
	gopkg.in/ini.v1 v1.67.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
