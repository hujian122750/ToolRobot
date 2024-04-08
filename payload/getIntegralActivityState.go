/**
 * @Author: hujian
 * @Description: getIntegralActivityState
 * @File: getIntegralActivityState.go
 * @Date: 2024/03/03 22:52:47
 */

package payload

type GetIntegralActivityStatePayLoad struct {
}

func (g *GetIntegralActivityStatePayLoad) InterfaceName() string {
	return "Activity:getIntegralActivityState"
}
