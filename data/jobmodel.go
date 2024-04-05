/**
 * @Author: hujian
 * @Description: job
 * @File: Jobmodel.go
 * @Date: 2024/04/06 00:15:29
 */
package data

type JobModel struct {
	World_id int32 `json:"world_id"`
	Event_type int32 `json:"event_type"`
	Stack_trace map[string]interface{} `json:"stack_trace"`
	Time_start int64 `json:"time_start"`
	Ctime int64 `json:"ctime"`
	Uid int32 `json:"uid"`
	C_job_id int32 `json:"c_job_id"`
	State string `json:"state"`
	Mtime int64 `json:"mtime"`
	Job_id int32 `json:"job_id"`
	Time_end int64 `json:"time_end"`
	Trace map[string]interface{} `json:"trace"`
	City_id int32 `json:"city_id"`
	Retry_times int16 `json:"retry_times"`
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

