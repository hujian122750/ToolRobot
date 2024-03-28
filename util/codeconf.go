/**
 * @Author: Administrator
 * @Description:
 * @File: codeconf.go
 * @Date: 2024/3/26 23:59
 */
package util

type CodeConf struct {
	Tables []string `json:"tablelist"`
}

type SqlSruct struct {
	name   string
	member map[string]string
}
