/**
 * @Author: hujian
 * @Description:
 * @File: util.go
 * @Date: 2024/3/14 22:55
 */
package util

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
	"path"
	"strings"
	"unicode"
)

func ParseRootConfigFromJson(filepath string) *RobotConf {
	file, error := os.Open(filepath)
	if error != nil {
		panic(fmt.Sprintf("open %s error,%v", filepath, error))
	}

	defer file.Close()

	conf := new(RobotConf)
	error = json.NewDecoder(file).Decode(conf)
	if error != nil {
		panic(fmt.Sprintf("load %s error,%v", filepath, error))
	}
	return conf
}

func ParseCodeConfigFromJson(filepath string) *CodeConf {
	file, error := os.Open(filepath)
	if error != nil {
		panic(fmt.Sprintf("open %s error,%v", filepath, error))
	}

	defer file.Close()

	conf := new(CodeConf)
	error = json.NewDecoder(file).Decode(conf)
	if error != nil {
		panic(fmt.Sprintf("load %s error,%v", filepath, error))
	}
	return conf
}

func ParseSql(fileName string, sqlName string) (*SqlSruct, error) {
	dataPath := path.Join(fileName, "sql/"+sqlName+".sql")

	file, error := os.Open(dataPath)
	if error != nil {
		return nil, error
	}

	template := new(SqlSruct)
	template.member = make(map[string]string)
	defer file.Close()
	scanner := bufio.NewScanner(file)
	index := 0
	for scanner.Scan() {
		s := scanner.Text()
		index++
		if index == 1 {
			template.name = ParseStructName(s)
		} else {
			member, datatype := ParseStructMember(s)
			if member == "" {
				fmt.Println(s)
				continue
			}
			template.member[member] = datatype
		}
	}

	return template, nil
}

func TransferStruct(fileName string, obj *SqlSruct) {
	dataPath := path.Join(fileName, "../data/"+strings.ToLower(obj.name)+"model.go")
	file, error := os.Create(dataPath)
	if error != nil {
		return
	}

	defer file.Close()

	//`json:"server_url"`
	file.WriteString("package data\n\n")
	file.WriteString("/**\n * @Author: hujian\n * @Description: " + strings.ToLower(obj.name) + "\n * @File: " + obj.name + "model.go\n * @Date: ")
	file.WriteString("2024/2/25 22:39\n */\n")
	file.WriteString(fmt.Sprintf("type %sModel struct {\n", obj.name))
	for key, value := range obj.member {
		realKey := key
		if key == "self_type" {
			realKey = "type"
		}
		file.WriteString(fmt.Sprintf("\t%s %s `json:\"%s\"`\n", key, value, strings.ToLower(realKey)))
	}

	file.WriteString("}")
}

func ParseStructName(str string) string {
	slice := strings.Split(str, " ")
	name := strings.Trim(slice[2], "`")
	return name
}

func ParseStructMember(str string) (string, string) {
	str = strings.TrimSpace(str)
	slice := strings.Split(str, " ")
	member := slice[0]
	if strings.Contains(strings.ToLower(member), "primary") ||
		strings.Contains(strings.ToLower(member), "key") ||
		strings.Contains(strings.ToLower(member), ")") {
		return "", ""
	}

	member = strings.Trim(member, "`")
	if member == "type" {
		member = "self_type"
	}

	runes := []rune(member)              // 将字符串转换为rune切片
	runes[0] = unicode.ToUpper(runes[0]) // 将第一个字符转换为大写
	member = string(runes)

	datatype := ""
	switch strings.ToLower(slice[1]) {
	case "bigint":
		datatype = "int32"
	case "bigint(20)":
		datatype = "int64"
	case "timestamp":
		datatype = "int64"
	default:
		if strings.Contains(slice[1], "varchar") {
			datatype = "string"
		} else if strings.Contains(slice[1], "tinyint") {
			datatype = "int8"
		} else if strings.Contains(slice[1], "blob") {
			datatype = "map[string]interface{}"
		} else {
			datatype = "string"
		}
	}

	return member, datatype
}
