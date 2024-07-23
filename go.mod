module github.com/DHowett/ghostbin

require (
	github.com/DHowett/go-xattr v0.0.0-20181227225257-7d72f4cdfe6d
	github.com/DHowett/gotimeout v0.0.0-20161206082608-24e8dccd7474
	github.com/golang/glog v1.2.2
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da
	github.com/gorilla/mux v1.8.1
	github.com/gorilla/securecookie v1.1.2
	github.com/gorilla/sessions v1.3.0
	github.com/microcosm-cc/bluemonday v1.0.27
	github.com/russross/blackfriday v1.6.0
	golang.org/x/crypto v0.25.0
	gopkg.in/yaml.v2 v2.4.0
)

require (
	github.com/aymerick/douceur v0.2.0 // indirect
	github.com/gorilla/css v1.0.1 // indirect
	golang.org/x/net v0.27.0 // indirect
)

replace github.com/gorilla/sessions => github.com/cj123/sessions v1.1.5

go 1.22.5
