create table categories
(
    id   bigint generated by default as identity
        primary key,
    name varchar(255) not null
        unique
);

create table users
(
    email_verified               boolean      not null,
    verification_code            varchar(6),
    id                           bigint generated by default as identity
        primary key,
    verification_code_expires_at timestamp(6),
    email                        varchar(255) not null
        unique,
    full_name                    varchar(255) not null,
    password                     varchar(255) not null,
    role                         varchar(255) not null
        constraint users_role_check
            check ((role)::text = ANY
        ((ARRAY ['ADMIN':: character varying, 'CLIENT':: character varying, 'MASTER':: character varying])::text[])
) ,
    username                     varchar(255) not null
        unique
);

create table appointments
(
    price            numeric(38, 2) not null,
    appointment_date timestamp(6)   not null,
    category_id      bigint         not null
        constraint fkgcdq4j5wpoqre4uma8gvcod1c
            references categories,
    client_id        bigint         not null
        constraint fkgdcpcx3yc2abu5oyb2078lc24
            references users,
    id               bigint generated by default as identity
        primary key,
    master_id        bigint         not null
        constraint fkrqdfukjcn0rhqrac8j96cu9w4
            references users,
    client_note      varchar(255),
    status           varchar(255)   not null
        constraint appointments_status_check
            check ((status)::text = ANY
        ((ARRAY ['PENDING':: character varying, 'CONFIRMED':: character varying, 'CANCELED':: character varying])::text[])
)
    );

create table blacklist
(
    blocked_at    timestamp(6) not null,
    blocked_by    bigint       not null
        constraint fkrfqeoeuovtyhk8oosmwr1mp5s
            references users,
    blocked_until timestamp(6),
    id            bigint generated by default as identity
        primary key,
    user_id       bigint       not null
        constraint fk8rrfcw4ypm4eayqtfu53tkl9r
            references users,
    reason        varchar(255) not null
);

create table notifications
(
    is_read           boolean      not null,
    created_at        timestamp(6) not null,
    id                bigint generated by default as identity
        primary key,
    user_id           bigint       not null
        constraint fk9y21adhxn0ayjhfocscqox7bh
            references users,
    message           varchar(255) not null,
    notification_type varchar(255) not null
        constraint notifications_notification_type_check
            check ((notification_type)::text = ANY
        ((ARRAY ['APPOINTMENT':: character varying, 'REVIEW':: character varying, 'SYSTEM':: character varying, 'OTHER':: character varying])::text[])
)
    );

create table reviews
(
    rating     integer      not null,
    client_id  bigint       not null
        constraint fkthot7stvi7mr7qa7jaj6wt0rj
            references users,
    created_at timestamp(6) not null,
    id         bigint generated by default as identity
        primary key,
    master_id  bigint       not null
        constraint fks57baa3ck4e2xgxs5i3idx8s
            references users,
    comment    varchar(1000)
);

create table salon_reviews
(
    rating     integer      not null,
    client_id  bigint       not null
        constraint fk91ixcnmapfpe9m2xc3s24sems
            references users,
    created_at timestamp(6) not null,
    id         bigint generated by default as identity
        primary key,
    comment    varchar(1000)
);

create table work_schedules
(
    end_time    time(6)      not null,
    start_time  time(6)      not null,
    id          bigint generated by default as identity
        primary key,
    master_id   bigint       not null
        constraint fkfhklc2qmnq4u60wkmiwfavfwh
            references users,
    day_of_week varchar(255) not null
        constraint work_schedules_day_of_week_check
            check ((day_of_week)::text = ANY
        ((ARRAY ['MONDAY':: character varying, 'TUESDAY':: character varying, 'WEDNESDAY':: character varying, 'THURSDAY':: character varying, 'FRIDAY':: character varying, 'SATURDAY':: character varying, 'SUNDAY':: character varying])::text[])
)
    );