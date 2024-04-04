/**
 * @Author: Administrator
 * @Description:
 * @File: codeconf.go
 * @Date: 2024/3/26 23:59
 */
package util

type CodeConf struct {
	Tables [][]string `json:"tablelist"`
}

type SqlTable struct {
}

type SqlSruct struct {
	name      string
	tablename string
	usetype   string
	member    map[string]string
}
