/**
 * @Author: hujian
 * @Description: job
 * @File: Jobmodel.go
 * @Date: 2024/04/04 23:20:54
 */
package data

type JobModel struct {
	Time_end int64 `json:"time_end"`
	City_id int32 `json:"city_id"`
	World_id int32 `json:"world_id"`
	Event_type string `json:"event_type"`
	Time_start int64 `json:"time_start"`
	Trace map[string]interface{} `json:"trace"`
	State string `json:"state"`
	Retry_times int16 `json:"retry_times"`
	Ctime int64 `json:"ctime"`
	Mtime int64 `json:"mtime"`
	Uid int32 `json:"uid"`
	Job_id int32 `json:"job_id"`
	C_job_id int32 `json:"c_job_id"`
	Stack_trace map[string]interface{} `json:"stack_trace"`
	Nextptr *JobModel
}

func (j *JobModel) ModelName() string {
	return "job"
}

