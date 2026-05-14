.class public final LT0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase_Impl;

.field public final b:LT0/b;

.field public final c:LT0/e;

.field public final d:LT0/e;

.field public final e:LT0/e;

.field public final f:LT0/e;

.field public final g:LT0/e;

.field public final h:LT0/e;

.field public final i:LT0/e;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    new-instance v0, LT0/b;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, LT0/b;-><init>(Lv0/h;I)V

    iput-object v0, p0, LT0/j;->b:LT0/b;

    new-instance v0, LT0/e;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, LT0/e;-><init>(Lv0/h;I)V

    iput-object v0, p0, LT0/j;->c:LT0/e;

    new-instance v0, LT0/e;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, LT0/e;-><init>(Lv0/h;I)V

    iput-object v0, p0, LT0/j;->d:LT0/e;

    new-instance v0, LT0/e;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, LT0/e;-><init>(Lv0/h;I)V

    iput-object v0, p0, LT0/j;->e:LT0/e;

    new-instance v0, LT0/e;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, LT0/e;-><init>(Lv0/h;I)V

    iput-object v0, p0, LT0/j;->f:LT0/e;

    new-instance v0, LT0/e;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, LT0/e;-><init>(Lv0/h;I)V

    iput-object v0, p0, LT0/j;->g:LT0/e;

    new-instance v0, LT0/e;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, LT0/e;-><init>(Lv0/h;I)V

    iput-object v0, p0, LT0/j;->h:LT0/e;

    new-instance v0, LT0/e;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, LT0/e;-><init>(Lv0/h;I)V

    iput-object v0, p0, LT0/j;->i:LT0/e;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 35

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v2

    const/16 v0, 0xc8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lv0/i;->f(IJ)V

    move-object/from16 v3, p0

    iget-object v0, v3, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    invoke-virtual {v0, v2}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v0, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    const-string v5, "requires_charging"

    invoke-static {v5, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v5

    const-string v6, "requires_device_idle"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    invoke-static {v7, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    invoke-static {v8, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    invoke-static {v9, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    invoke-static {v10, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    invoke-static {v11, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v11

    const-string v12, "id"

    invoke-static {v12, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v12

    const-string v13, "state"

    invoke-static {v13, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v13

    const-string v14, "worker_class_name"

    invoke-static {v14, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    invoke-static {v15, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v15

    const-string v1, "input"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    const-string v3, "output"

    invoke-static {v3, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "interval_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "flex_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "run_attempt_count"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_policy"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "backoff_delay_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "period_start_time"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "minimum_retention_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "schedule_requested_at"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "run_in_foreground"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v27, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v28, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v29, v12

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v30, v14

    new-instance v14, Landroidx/work/c;

    invoke-direct {v14}, Landroidx/work/c;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    invoke-static/range {v31 .. v31}, LL4/d;->w(I)I

    move-result v0

    iput v0, v14, Landroidx/work/c;->a:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v31, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move/from16 v0, v31

    :goto_1
    iput-boolean v0, v14, Landroidx/work/c;->b:Z

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    move/from16 v0, v31

    :goto_2
    iput-boolean v0, v14, Landroidx/work/c;->c:Z

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move/from16 v0, v31

    :goto_3
    iput-boolean v0, v14, Landroidx/work/c;->d:Z

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    move/from16 v0, v31

    :goto_4
    iput-boolean v0, v14, Landroidx/work/c;->e:Z

    move v0, v5

    move/from16 v33, v6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroidx/work/c;->f:J

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroidx/work/c;->g:J

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, LL4/d;->d([B)Landroidx/work/e;

    move-result-object v5

    iput-object v5, v14, Landroidx/work/c;->h:Landroidx/work/e;

    new-instance v5, LT0/i;

    invoke-direct {v5, v3, v12}, LT0/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, LL4/d;->y(I)I

    move-result v3

    iput v3, v5, LT0/i;->b:I

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, LT0/i;->d:Ljava/lang/String;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v3

    iput-object v3, v5, LT0/i;->e:Landroidx/work/g;

    move/from16 v3, v28

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-static {v6}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v6

    iput-object v6, v5, LT0/i;->f:Landroidx/work/g;

    move v12, v1

    move/from16 v6, v17

    move/from16 v17, v0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->g:J

    move v1, v7

    move/from16 v0, v18

    move/from16 v18, v6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->h:J

    move v7, v0

    move/from16 v6, v19

    move/from16 v19, v1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->i:J

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, LT0/i;->k:I

    move/from16 v1, v21

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v21, v0

    invoke-static/range {v20 .. v20}, LL4/d;->v(I)I

    move-result v0

    iput v0, v5, LT0/i;->l:I

    move/from16 v20, v6

    move/from16 v0, v22

    move/from16 v22, v7

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->m:J

    move v7, v1

    move/from16 v6, v23

    move/from16 v23, v0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->n:J

    move v1, v6

    move/from16 v0, v24

    move/from16 v24, v7

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->o:J

    move v7, v0

    move/from16 v6, v25

    move/from16 v25, v1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->p:J

    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    move/from16 v1, v31

    :goto_5
    iput-boolean v1, v5, LT0/i;->q:Z

    move/from16 v1, v27

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v27, v0

    invoke-static/range {v26 .. v26}, LL4/d;->x(I)I

    move-result v0

    iput v0, v5, LT0/i;->r:I

    iput-object v14, v5, LT0/i;->j:Landroidx/work/c;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v28, v3

    move/from16 v5, v17

    move/from16 v17, v18

    move/from16 v18, v22

    move/from16 v22, v23

    move/from16 v23, v25

    move/from16 v26, v27

    move/from16 v14, v30

    move/from16 v0, v32

    move/from16 v27, v1

    move/from16 v25, v6

    move v1, v12

    move/from16 v12, v29

    move/from16 v6, v33

    move/from16 v34, v24

    move/from16 v24, v7

    move/from16 v7, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v34

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lv0/i;->release()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lv0/i;->release()V

    throw v0
.end method

.method public final b(I)Ljava/util/ArrayList;
    .locals 34

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v2

    move/from16 v0, p1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lv0/i;->f(IJ)V

    move-object/from16 v3, p0

    iget-object v0, v3, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    invoke-virtual {v0, v2}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v0, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    const-string v5, "requires_charging"

    invoke-static {v5, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v5

    const-string v6, "requires_device_idle"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    invoke-static {v7, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    invoke-static {v8, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    invoke-static {v9, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    invoke-static {v10, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    invoke-static {v11, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v11

    const-string v12, "id"

    invoke-static {v12, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v12

    const-string v13, "state"

    invoke-static {v13, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v13

    const-string v14, "worker_class_name"

    invoke-static {v14, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    invoke-static {v15, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v15

    const-string v1, "input"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    const-string v3, "output"

    invoke-static {v3, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "interval_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "flex_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "run_attempt_count"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "backoff_policy"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_delay_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "period_start_time"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "minimum_retention_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "schedule_requested_at"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "run_in_foreground"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v26, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v27, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v28, v12

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v14

    new-instance v14, Landroidx/work/c;

    invoke-direct {v14}, Landroidx/work/c;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    invoke-static/range {v30 .. v30}, LL4/d;->w(I)I

    move-result v0

    iput v0, v14, Landroidx/work/c;->a:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v30, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move/from16 v0, v30

    :goto_1
    iput-boolean v0, v14, Landroidx/work/c;->b:Z

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    move/from16 v0, v30

    :goto_2
    iput-boolean v0, v14, Landroidx/work/c;->c:Z

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move/from16 v0, v30

    :goto_3
    iput-boolean v0, v14, Landroidx/work/c;->d:Z

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    move/from16 v0, v30

    :goto_4
    iput-boolean v0, v14, Landroidx/work/c;->e:Z

    move v0, v5

    move/from16 v32, v6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroidx/work/c;->f:J

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroidx/work/c;->g:J

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, LL4/d;->d([B)Landroidx/work/e;

    move-result-object v5

    iput-object v5, v14, Landroidx/work/c;->h:Landroidx/work/e;

    new-instance v5, LT0/i;

    invoke-direct {v5, v3, v12}, LT0/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, LL4/d;->y(I)I

    move-result v3

    iput v3, v5, LT0/i;->b:I

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, LT0/i;->d:Ljava/lang/String;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v3

    iput-object v3, v5, LT0/i;->e:Landroidx/work/g;

    move/from16 v3, v27

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-static {v6}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v6

    iput-object v6, v5, LT0/i;->f:Landroidx/work/g;

    move/from16 v6, p1

    move v12, v0

    move/from16 p1, v1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->g:J

    move v1, v7

    move/from16 v0, v17

    move/from16 v17, v6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->h:J

    move v7, v0

    move/from16 v6, v18

    move/from16 v18, v1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->i:J

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, LT0/i;->k:I

    move/from16 v1, v20

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    invoke-static/range {v19 .. v19}, LL4/d;->v(I)I

    move-result v0

    iput v0, v5, LT0/i;->l:I

    move/from16 v19, v6

    move/from16 v0, v21

    move/from16 v21, v7

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->m:J

    move v7, v1

    move/from16 v6, v22

    move/from16 v22, v0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->n:J

    move v1, v6

    move/from16 v0, v23

    move/from16 v23, v7

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->o:J

    move v7, v0

    move/from16 v6, v24

    move/from16 v24, v1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->p:J

    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    move/from16 v1, v30

    :goto_5
    iput-boolean v1, v5, LT0/i;->q:Z

    move/from16 v1, v26

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v26, v0

    invoke-static/range {v25 .. v25}, LL4/d;->x(I)I

    move-result v0

    iput v0, v5, LT0/i;->r:I

    iput-object v14, v5, LT0/i;->j:Landroidx/work/c;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v27, v3

    move v5, v12

    move/from16 v25, v26

    move/from16 v12, v28

    move/from16 v14, v29

    move/from16 v0, v31

    move/from16 v26, v1

    move/from16 v1, p1

    move/from16 p1, v17

    move/from16 v17, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v24, v6

    move/from16 v6, v32

    move/from16 v33, v23

    move/from16 v23, v7

    move/from16 v7, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v33

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lv0/i;->release()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lv0/i;->release()V

    throw v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 35

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v2

    move-object/from16 v3, p0

    iget-object v0, v3, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    invoke-virtual {v0, v2}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v0, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    const-string v5, "requires_charging"

    invoke-static {v5, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v5

    const-string v6, "requires_device_idle"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    invoke-static {v7, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    invoke-static {v8, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    invoke-static {v9, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    invoke-static {v10, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    invoke-static {v11, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v11

    const-string v12, "id"

    invoke-static {v12, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v12

    const-string v13, "state"

    invoke-static {v13, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v13

    const-string v14, "worker_class_name"

    invoke-static {v14, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    invoke-static {v15, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v15

    const-string v1, "input"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    const-string v3, "output"

    invoke-static {v3, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "interval_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "flex_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "run_attempt_count"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_policy"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "backoff_delay_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "period_start_time"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "minimum_retention_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "schedule_requested_at"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "run_in_foreground"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v27, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v28, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v29, v12

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v30, v14

    new-instance v14, Landroidx/work/c;

    invoke-direct {v14}, Landroidx/work/c;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    invoke-static/range {v31 .. v31}, LL4/d;->w(I)I

    move-result v0

    iput v0, v14, Landroidx/work/c;->a:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v31, 0x1

    if-eqz v0, :cond_0

    move/from16 v0, v31

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v14, Landroidx/work/c;->b:Z

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v0, v31

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v14, Landroidx/work/c;->c:Z

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v0, v31

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v14, Landroidx/work/c;->d:Z

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v0, v31

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v14, Landroidx/work/c;->e:Z

    move v0, v5

    move/from16 v33, v6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroidx/work/c;->f:J

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroidx/work/c;->g:J

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, LL4/d;->d([B)Landroidx/work/e;

    move-result-object v5

    iput-object v5, v14, Landroidx/work/c;->h:Landroidx/work/e;

    new-instance v5, LT0/i;

    invoke-direct {v5, v3, v12}, LT0/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, LL4/d;->y(I)I

    move-result v3

    iput v3, v5, LT0/i;->b:I

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, LT0/i;->d:Ljava/lang/String;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v3

    iput-object v3, v5, LT0/i;->e:Landroidx/work/g;

    move/from16 v3, v28

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-static {v6}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v6

    iput-object v6, v5, LT0/i;->f:Landroidx/work/g;

    move v12, v1

    move/from16 v6, v17

    move/from16 v17, v0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->g:J

    move v1, v7

    move/from16 v0, v18

    move/from16 v18, v6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->h:J

    move v7, v0

    move/from16 v6, v19

    move/from16 v19, v1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->i:J

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, LT0/i;->k:I

    move/from16 v1, v21

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v21, v0

    invoke-static/range {v20 .. v20}, LL4/d;->v(I)I

    move-result v0

    iput v0, v5, LT0/i;->l:I

    move/from16 v20, v6

    move/from16 v0, v22

    move/from16 v22, v7

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->m:J

    move v7, v1

    move/from16 v6, v23

    move/from16 v23, v0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->n:J

    move v1, v6

    move/from16 v0, v24

    move/from16 v24, v7

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->o:J

    move v7, v0

    move/from16 v6, v25

    move/from16 v25, v1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->p:J

    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v1, v31

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v5, LT0/i;->q:Z

    move/from16 v1, v27

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v27, v0

    invoke-static/range {v26 .. v26}, LL4/d;->x(I)I

    move-result v0

    iput v0, v5, LT0/i;->r:I

    iput-object v14, v5, LT0/i;->j:Landroidx/work/c;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v28, v3

    move/from16 v5, v17

    move/from16 v17, v18

    move/from16 v18, v22

    move/from16 v22, v23

    move/from16 v23, v25

    move/from16 v26, v27

    move/from16 v14, v30

    move/from16 v0, v32

    move/from16 v27, v1

    move/from16 v25, v6

    move v1, v12

    move/from16 v12, v29

    move/from16 v6, v33

    move/from16 v34, v24

    move/from16 v24, v7

    move/from16 v7, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v34

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lv0/i;->release()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lv0/i;->release()V

    throw v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 35

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v2

    move-object/from16 v3, p0

    iget-object v0, v3, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    invoke-virtual {v0, v2}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v0, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    const-string v5, "requires_charging"

    invoke-static {v5, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v5

    const-string v6, "requires_device_idle"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    invoke-static {v7, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    invoke-static {v8, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    invoke-static {v9, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    invoke-static {v10, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    invoke-static {v11, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v11

    const-string v12, "id"

    invoke-static {v12, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v12

    const-string v13, "state"

    invoke-static {v13, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v13

    const-string v14, "worker_class_name"

    invoke-static {v14, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    invoke-static {v15, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v15

    const-string v1, "input"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    const-string v3, "output"

    invoke-static {v3, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "interval_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "flex_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "run_attempt_count"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_policy"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "backoff_delay_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "period_start_time"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "minimum_retention_duration"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "schedule_requested_at"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "run_in_foreground"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move/from16 v27, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v28, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v29, v12

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v30, v14

    new-instance v14, Landroidx/work/c;

    invoke-direct {v14}, Landroidx/work/c;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    invoke-static/range {v31 .. v31}, LL4/d;->w(I)I

    move-result v0

    iput v0, v14, Landroidx/work/c;->a:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v31, 0x1

    if-eqz v0, :cond_0

    move/from16 v0, v31

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v14, Landroidx/work/c;->b:Z

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v0, v31

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v14, Landroidx/work/c;->c:Z

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v0, v31

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v14, Landroidx/work/c;->d:Z

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v0, v31

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v14, Landroidx/work/c;->e:Z

    move v0, v5

    move/from16 v33, v6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroidx/work/c;->f:J

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroidx/work/c;->g:J

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, LL4/d;->d([B)Landroidx/work/e;

    move-result-object v5

    iput-object v5, v14, Landroidx/work/c;->h:Landroidx/work/e;

    new-instance v5, LT0/i;

    invoke-direct {v5, v3, v12}, LT0/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, LL4/d;->y(I)I

    move-result v3

    iput v3, v5, LT0/i;->b:I

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, LT0/i;->d:Ljava/lang/String;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v3

    iput-object v3, v5, LT0/i;->e:Landroidx/work/g;

    move/from16 v3, v28

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-static {v6}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v6

    iput-object v6, v5, LT0/i;->f:Landroidx/work/g;

    move v12, v1

    move/from16 v6, v17

    move/from16 v17, v0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->g:J

    move v1, v7

    move/from16 v0, v18

    move/from16 v18, v6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->h:J

    move v7, v0

    move/from16 v6, v19

    move/from16 v19, v1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->i:J

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, LT0/i;->k:I

    move/from16 v1, v21

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v21, v0

    invoke-static/range {v20 .. v20}, LL4/d;->v(I)I

    move-result v0

    iput v0, v5, LT0/i;->l:I

    move/from16 v20, v6

    move/from16 v0, v22

    move/from16 v22, v7

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->m:J

    move v7, v1

    move/from16 v6, v23

    move/from16 v23, v0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->n:J

    move v1, v6

    move/from16 v0, v24

    move/from16 v24, v7

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LT0/i;->o:J

    move v7, v0

    move/from16 v6, v25

    move/from16 v25, v1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, LT0/i;->p:J

    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v1, v31

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v5, LT0/i;->q:Z

    move/from16 v1, v27

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v27, v0

    invoke-static/range {v26 .. v26}, LL4/d;->x(I)I

    move-result v0

    iput v0, v5, LT0/i;->r:I

    iput-object v14, v5, LT0/i;->j:Landroidx/work/c;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v28, v3

    move/from16 v5, v17

    move/from16 v17, v18

    move/from16 v18, v22

    move/from16 v22, v23

    move/from16 v23, v25

    move/from16 v26, v27

    move/from16 v14, v30

    move/from16 v0, v32

    move/from16 v27, v1

    move/from16 v25, v6

    move v1, v12

    move/from16 v12, v29

    move/from16 v6, v33

    move/from16 v34, v24

    move/from16 v24, v7

    move/from16 v7, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v34

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lv0/i;->release()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lv0/i;->release()V

    throw v0
.end method

.method public final e(Ljava/lang/String;)I
    .locals 3

    const-string v0, "SELECT state FROM workspec WHERE id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lv0/i;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lv0/i;->m(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p1}, Lv0/h;->b()V

    invoke-virtual {p1, v0}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, LL4/d;->y(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    return v2

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    throw v1
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 4

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lv0/i;->g(I)V

    iget-object v1, p0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v1}, Lv0/h;->b()V

    invoke-virtual {v1, v0}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    return-object v2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    throw v2
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 4

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v0

    const-string v2, "offline_ping_sender_work"

    invoke-virtual {v0, v1, v2}, Lv0/i;->m(ILjava/lang/String;)V

    iget-object v1, p0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v1}, Lv0/h;->b()V

    invoke-virtual {v1, v0}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    return-object v2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    throw v2
.end method

.method public final h(Ljava/lang/String;)LT0/i;
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Lv0/i;->g(I)V

    :goto_0
    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2, v0}, Lv0/i;->m(ILjava/lang/String;)V

    goto :goto_0

    :goto_1
    iget-object v0, v3, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    invoke-virtual {v0, v1}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    invoke-static {v0, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    const-string v5, "requires_charging"

    invoke-static {v5, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v5

    const-string v6, "requires_device_idle"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    invoke-static {v7, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    invoke-static {v8, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    invoke-static {v9, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    invoke-static {v10, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    invoke-static {v11, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v11

    const-string v12, "id"

    invoke-static {v12, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v12

    const-string v13, "state"

    invoke-static {v13, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v13

    const-string v14, "worker_class_name"

    invoke-static {v14, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    invoke-static {v15, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v15

    const-string v2, "input"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    const-string v3, "output"

    invoke-static {v3, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "initial_delay"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "interval_duration"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "flex_duration"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "run_attempt_count"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "backoff_policy"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "backoff_delay_duration"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "period_start_time"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "minimum_retention_duration"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "schedule_requested_at"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "run_in_foreground"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v26, v1

    new-instance v1, Landroidx/work/c;

    invoke-direct {v1}, Landroidx/work/c;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, LL4/d;->w(I)I

    move-result v0

    iput v0, v1, Landroidx/work/c;->a:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v5

    :goto_2
    iput-boolean v0, v1, Landroidx/work/c;->b:Z

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move v0, v5

    :goto_3
    iput-boolean v0, v1, Landroidx/work/c;->c:Z

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    move v0, v5

    :goto_4
    iput-boolean v0, v1, Landroidx/work/c;->d:Z

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    move v0, v5

    :goto_5
    iput-boolean v0, v1, Landroidx/work/c;->e:Z

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Landroidx/work/c;->f:J

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Landroidx/work/c;->g:J

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, LL4/d;->d([B)Landroidx/work/e;

    move-result-object v0

    iput-object v0, v1, Landroidx/work/c;->h:Landroidx/work/e;

    new-instance v0, LT0/i;

    invoke-direct {v0, v12, v14}, LT0/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, LL4/d;->y(I)I

    move-result v6

    iput v6, v0, LT0/i;->b:I

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, LT0/i;->d:Ljava/lang/String;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v2

    iput-object v2, v0, LT0/i;->e:Landroidx/work/g;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v2

    iput-object v2, v0, LT0/i;->f:Landroidx/work/g;

    move/from16 v2, p1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, LT0/i;->g:J

    move/from16 v2, v17

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, LT0/i;->h:J

    move/from16 v2, v18

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, LT0/i;->i:J

    move/from16 v2, v19

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, LT0/i;->k:I

    move/from16 v2, v20

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, LL4/d;->v(I)I

    move-result v2

    iput v2, v0, LT0/i;->l:I

    move/from16 v2, v21

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, LT0/i;->m:J

    move/from16 v2, v22

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, LT0/i;->n:J

    move/from16 v2, v23

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, LT0/i;->o:J

    move/from16 v2, v24

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, LT0/i;->p:J

    move/from16 v2, v25

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_6

    :cond_5
    move v2, v5

    :goto_6
    iput-boolean v2, v0, LT0/i;->q:Z

    move/from16 v2, v26

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, LL4/d;->x(I)I

    move-result v2

    iput v2, v0, LT0/i;->r:I

    iput-object v1, v0, LT0/i;->j:Landroidx/work/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lv0/i;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lv0/i;->release()V

    throw v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    iget-object v1, p0, LT0/j;->f:LT0/e;

    invoke-virtual {v1}, Lv0/k;->a()LA0/f;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v2, v3}, LA0/b;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, p1}, LA0/b;->g(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lv0/h;->c()V

    :try_start_0
    iget-object p1, v2, LA0/f;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v0}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    throw p1
.end method

.method public final j(JLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    iget-object v1, p0, LT0/j;->h:LT0/e;

    invoke-virtual {v1}, Lv0/k;->a()LA0/f;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2}, LA0/b;->e(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    invoke-virtual {v2, p1}, LA0/b;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1, p3}, LA0/b;->g(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lv0/h;->c()V

    :try_start_0
    iget-object p1, v2, LA0/f;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v0}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    throw p1
.end method

.method public final k(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    iget-object v1, p0, LT0/j;->g:LT0/e;

    invoke-virtual {v1}, Lv0/k;->a()LA0/f;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v2, v3}, LA0/b;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, p1}, LA0/b;->g(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lv0/h;->c()V

    :try_start_0
    iget-object p1, v2, LA0/f;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v0}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    throw p1
.end method

.method public final l(Ljava/lang/String;Landroidx/work/g;)V
    .locals 4

    iget-object v0, p0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    iget-object v1, p0, LT0/j;->d:LT0/e;

    invoke-virtual {v1}, Lv0/k;->a()LA0/f;

    move-result-object v2

    invoke-static {p2}, Landroidx/work/g;->c(Landroidx/work/g;)[B

    move-result-object p2

    const/4 v3, 0x1

    if-nez p2, :cond_0

    invoke-virtual {v2, v3}, LA0/b;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, p2}, LA0/b;->c(I[B)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    invoke-virtual {v2, p2}, LA0/b;->f(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p2, p1}, LA0/b;->g(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lv0/h;->c()V

    :try_start_0
    invoke-virtual {v2}, LA0/f;->t()V

    invoke-virtual {v0}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    throw p1
.end method

.method public final m(JLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    iget-object v1, p0, LT0/j;->e:LT0/e;

    invoke-virtual {v1}, Lv0/k;->a()LA0/f;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2}, LA0/b;->e(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    invoke-virtual {v2, p1}, LA0/b;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1, p3}, LA0/b;->g(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lv0/h;->c()V

    :try_start_0
    invoke-virtual {v2}, LA0/f;->t()V

    invoke-virtual {v0}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    throw p1
.end method

.method public final varargs n(I[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE workspec SET state=? WHERE id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    const-string v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_0

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lv0/h;->a()V

    invoke-virtual {v0}, Lv0/h;->b()V

    iget-object v2, v0, Lv0/h;->c:Lz0/b;

    invoke-interface {v2}, Lz0/b;->i()LA0/b;

    move-result-object v2

    iget-object v2, v2, LA0/b;->b:Landroid/database/sqlite/SQLiteClosable;

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-static {p1}, LL4/d;->G(I)I

    move-result p1

    int-to-long v4, p1

    const/4 p1, 0x1

    invoke-virtual {v1, p1, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    array-length p1, p2

    const/4 v2, 0x2

    :goto_1
    if-ge v3, p1, :cond_3

    aget-object v4, p2, v3

    if-nez v4, :cond_2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lv0/h;->c()V

    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v0}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lv0/h;->f()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lv0/h;->f()V

    throw p1
.end method
