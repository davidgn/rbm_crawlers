.class public Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsWrkr"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/workers/DiagnosticsWorker;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static a(LD2/e;LD2/e;LJ2/e;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT0/i;

    iget-object v2, v1, LT0/i;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, LJ2/e;->A(Ljava/lang/String;)LT0/d;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, LT0/d;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, v1, LT0/i;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "SELECT name FROM workname WHERE work_spec_id=?"

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v4

    if-nez v3, :cond_1

    invoke-virtual {v4, v5}, Lv0/i;->g(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v5, v3}, Lv0/i;->m(ILjava/lang/String;)V

    :goto_2
    iget-object v3, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Lv0/h;->b()V

    invoke-virtual {v3, v4}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Lv0/i;->release()V

    iget-object v3, v1, LT0/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, LD2/e;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, LT0/i;->a:Ljava/lang/String;

    iget-object v6, v1, LT0/i;->c:Ljava/lang/String;

    iget v1, v1, LT0/i;->b:I

    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const-string v1, "CANCELLED"

    goto :goto_4

    :pswitch_1
    const-string v1, "BLOCKED"

    goto :goto_4

    :pswitch_2
    const-string v1, "FAILED"

    goto :goto_4

    :pswitch_3
    const-string v1, "SUCCEEDED"

    goto :goto_4

    :pswitch_4
    const-string v1, "RUNNING"

    goto :goto_4

    :pswitch_5
    const-string v1, "ENQUEUED"

    :goto_4
    const-string v7, "\n"

    const-string v8, "\t "

    invoke-static {v7, v4, v8, v6, v8}, LC/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-static {v4, v5, v8, v3, v1}, LC/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Lv0/i;->release()V

    throw p0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final doWork()Landroidx/work/m;
    .locals 37

    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LL0/l;->I(Landroid/content/Context;)LL0/l;

    move-result-object v0

    iget-object v0, v0, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->l()LD2/e;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()LD2/e;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()LJ2/e;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    const/4 v7, 0x1

    invoke-static {v7, v6}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v6

    invoke-virtual {v6, v7, v4, v5}, Lv0/i;->f(IJ)V

    iget-object v4, v1, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, Lv0/h;->b()V

    invoke-virtual {v4, v6}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v5, "required_network_type"

    invoke-static {v5, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v5

    const-string v8, "requires_charging"

    invoke-static {v8, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v8

    const-string v9, "requires_device_idle"

    invoke-static {v9, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v9

    const-string v10, "requires_battery_not_low"

    invoke-static {v10, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v10

    const-string v11, "requires_storage_not_low"

    invoke-static {v11, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v11

    const-string v12, "trigger_content_update_delay"

    invoke-static {v12, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v12

    const-string v13, "trigger_max_content_delay"

    invoke-static {v13, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v13

    const-string v14, "content_uri_triggers"

    invoke-static {v14, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v14

    const-string v15, "id"

    invoke-static {v15, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v15

    const-string v7, "state"

    invoke-static {v7, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v7

    move-object/from16 v16, v0

    const-string v0, "worker_class_name"

    invoke-static {v0, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    move-object/from16 v17, v2

    const-string v2, "input_merger_class_name"

    invoke-static {v2, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    move-object/from16 v18, v3

    const-string v3, "input"

    invoke-static {v3, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v3

    move-object/from16 v19, v1

    const-string v1, "output"

    invoke-static {v1, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v20, v6

    :try_start_1
    const-string v6, "initial_delay"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v21, v6

    const-string v6, "interval_duration"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v22, v6

    const-string v6, "flex_duration"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v23, v6

    const-string v6, "run_attempt_count"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v24, v6

    const-string v6, "backoff_policy"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v25, v6

    const-string v6, "backoff_delay_duration"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v26, v6

    const-string v6, "period_start_time"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v27, v6

    const-string v6, "minimum_retention_duration"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v28, v6

    const-string v6, "schedule_requested_at"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v29, v6

    const-string v6, "run_in_foreground"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v30, v6

    const-string v6, "out_of_quota_policy"

    invoke-static {v6, v4}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v6

    move/from16 v31, v6

    new-instance v6, Ljava/util/ArrayList;

    move/from16 v32, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    move-object/from16 v33, v6

    if-eqz v1, :cond_5

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v34, v0

    new-instance v0, Landroidx/work/c;

    invoke-direct {v0}, Landroidx/work/c;-><init>()V

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v36, v5

    invoke-static/range {v35 .. v35}, LL4/d;->w(I)I

    move-result v5

    iput v5, v0, Landroidx/work/c;->a:I

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v0, Landroidx/work/c;->b:Z

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v0, Landroidx/work/c;->c:Z

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v0, Landroidx/work/c;->d:Z

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, v0, Landroidx/work/c;->e:Z

    move v5, v8

    move/from16 v35, v9

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/work/c;->f:J

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/work/c;->g:J

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-static {v8}, LL4/d;->d([B)Landroidx/work/e;

    move-result-object v8

    iput-object v8, v0, Landroidx/work/c;->h:Landroidx/work/e;

    new-instance v8, LT0/i;

    invoke-direct {v8, v1, v6}, LT0/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, LL4/d;->y(I)I

    move-result v1

    iput v1, v8, LT0/i;->b:I

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, LT0/i;->d:Ljava/lang/String;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v1

    iput-object v1, v8, LT0/i;->e:Landroidx/work/g;

    move/from16 v1, v32

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-static {v6}, Landroidx/work/g;->a([B)Landroidx/work/g;

    move-result-object v6

    iput-object v6, v8, LT0/i;->f:Landroidx/work/g;

    move/from16 v32, v1

    move v9, v2

    move/from16 v6, v21

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, LT0/i;->g:J

    move/from16 v21, v3

    move/from16 v1, v22

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, LT0/i;->h:J

    move v3, v5

    move/from16 v22, v6

    move/from16 v2, v23

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v8, LT0/i;->i:J

    move/from16 v5, v24

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v8, LT0/i;->k:I

    move/from16 v6, v25

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v24, v1

    invoke-static/range {v23 .. v23}, LL4/d;->v(I)I

    move-result v1

    iput v1, v8, LT0/i;->l:I

    move/from16 v23, v2

    move/from16 v25, v3

    move/from16 v1, v26

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, LT0/i;->m:J

    move v3, v5

    move/from16 v26, v6

    move/from16 v2, v27

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v8, LT0/i;->n:J

    move v6, v1

    move/from16 v27, v2

    move/from16 v5, v28

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, LT0/i;->o:J

    move/from16 v28, v3

    move/from16 v1, v29

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, LT0/i;->p:J

    move/from16 v2, v30

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, v8, LT0/i;->q:Z

    move/from16 v3, v31

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v1

    invoke-static/range {v29 .. v29}, LL4/d;->x(I)I

    move-result v1

    iput v1, v8, LT0/i;->r:I

    iput-object v0, v8, LT0/i;->j:Landroidx/work/c;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v31, v3

    move/from16 v3, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v8, v25

    move/from16 v25, v26

    move/from16 v24, v28

    move/from16 v29, v30

    move/from16 v30, v2

    move/from16 v28, v5

    move/from16 v26, v6

    move v2, v9

    move/from16 v9, v35

    move/from16 v5, v36

    move-object v6, v0

    move/from16 v0, v34

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_5
    move-object/from16 v0, v33

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v20 .. v20}, Lv0/i;->release()V

    invoke-virtual/range {v19 .. v19}, LT0/j;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, LT0/j;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    sget-object v4, Landroidx/work/impl/workers/DiagnosticsWorker;->a:Ljava/lang/String;

    if-nez v3, :cond_6

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v3

    const-string v5, "Recently completed work:\n\n"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v7}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v3

    move-object/from16 v8, v16

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    invoke-static {v5, v7, v8, v0}, Landroidx/work/impl/workers/DiagnosticsWorker;->a(LD2/e;LD2/e;LJ2/e;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    new-array v9, v6, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v0, v9}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    move-object/from16 v8, v16

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    const-string v3, "Running work:\n\n"

    new-array v9, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v3, v9}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    invoke-static {v5, v7, v8, v1}, Landroidx/work/impl/workers/DiagnosticsWorker;->a(LD2/e;LD2/e;LJ2/e;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v1, v3}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    const-string v1, "Enqueued work:\n\n"

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v1, v3}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    invoke-static {v5, v7, v8, v2}, Landroidx/work/impl/workers/DiagnosticsWorker;->a(LD2/e;LD2/e;LJ2/e;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v1, v2}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_8
    new-instance v0, Landroidx/work/l;

    sget-object v1, Landroidx/work/g;->c:Landroidx/work/g;

    invoke-direct {v0, v1}, Landroidx/work/l;-><init>(Landroidx/work/g;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v20, v6

    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v20 .. v20}, Lv0/i;->release()V

    throw v0
.end method
