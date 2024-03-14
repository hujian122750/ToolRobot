/**
 * @Author: hujian
 * @Description:
 * @File: util.go
 * @Date: 2024/3/14 22:55
 */
package util

import (
	"encoding/json"
	"fmt"
	"github.com/bench/tools/model"
	"os"
)

func ParseRootConfigFromJson(filepath string) *model.RobotConf {
	file, error := os.Open(filepath)
	if error != nil {
		panic(fmt.Sprintf("open %s error,%v", filepath, error))
	}

	defer file.Close()

	conf := new(model.RobotConf)
	error = json.NewDecoder(file).Decode(conf)
	if error != nil {
		panic(fmt.Sprintf("load %s error,%v", filepath, error))
	}
	return conf
}