/**
 * @Author: hujian
 * @Description: getConfig
 * @File: getConfig.go
 * @Date: 2024/03/03 22:52:47
 */

package payload

type GetConfig struct {
}

func (g *GetConfig) InterfaceName() string {
	return "ActivityCenter:getConfig"
}
