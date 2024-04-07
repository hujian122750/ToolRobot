/**
 * @Author: Administrator
 * @Description:
 * @File: codeconf.go
 * @Date: 2024/3/26 23:59
 */
package util

var TableConfig *CodeConf

type CodeConf struct {
	Tables     [][]string `json:"tablelist"`
	Interfaces []string   `json:"interfacelist"`
}

type SqlSruct struct {
	name      string
	tablename string
	usetype   string
	member    map[string]string
}
