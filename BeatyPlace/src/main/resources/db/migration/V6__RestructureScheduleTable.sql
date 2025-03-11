alter table work_schedules
    add date DATE not null;

alter table work_schedules
drop column day_of_week;

alter table work_schedules
    add status VARCHAR(10);
