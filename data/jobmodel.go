/**
 * @Author: hujian
 * @Description: job
 * @File: Jobmodel.go
 * @Date: 2024/04/08 20:46:04
 */
package data

type JobModel struct {
	Trace interface{} `json:"trace"`
	Uid int32 `json:"uid"`
	World_id int32 `json:"world_id"`
	Retry_times int16 `json:"retry_times"`
	Time_start float64 `json:"time_start"`
	Time_end float64 `json:"time_end"`
	State string `json:"state"`
	Ctime float64 `json:"ctime"`
	C_job_id int32 `json:"c_job_id"`
	Stack_trace interface{} `json:"stack_trace"`
	Mtime float64 `json:"mtime"`
	Job_id int32 `json:"job_id"`
	City_id int32 `json:"city_id"`
	Event_type int32 `json:"event_type"`
	Nextptr *JobModel
}

func (j *JobModel) ModelName() string {
	return "job"
}

func (j *JobModel) UpdateModel() {
	current := j
	for current.Nextptr != nil{
		if current.Nextptr.IsEquals(j){
			model := *j
			model.Nextptr = current.Nextptr.Nextptr
			current.Nextptr = &model
		}else{
			current = current.Nextptr
		}
	}
	if current.Nextptr == nil{
		model := *j
		model.Nextptr = nil
		current.Nextptr = &model
	}
}

func (j *JobModel) IsEquals(model IBaseModel) bool {
	obj,ok := model.(*JobModel)
	if !ok{
		return false
	}
	return obj == nil
}

