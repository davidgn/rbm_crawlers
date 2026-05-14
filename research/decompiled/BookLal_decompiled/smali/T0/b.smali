.class public final LT0/b;
.super Lv0/k;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lv0/h;I)V
    .locals 0

    iput p2, p0, LT0/b;->d:I

    invoke-direct {p0, p1}, Lv0/k;-><init>(Lv0/h;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget v0, p0, LT0/b;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object v0

    :pswitch_0
    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0

    :pswitch_1
    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0

    :pswitch_2
    const-string v0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object v0

    :pswitch_3
    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0

    :pswitch_4
    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0

    :pswitch_5
    const-string v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(LA0/f;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    iget v0, v2, LT0/b;->d:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p2

    check-cast v0, LT0/k;

    iget-object v3, v0, LT0/k;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v1, v4}, LA0/b;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4, v3}, LA0/b;->g(ILjava/lang/String;)V

    :goto_0
    const/4 v3, 0x2

    iget-object v0, v0, LT0/k;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, LA0/b;->f(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3, v0}, LA0/b;->g(ILjava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    move-object/from16 v0, p2

    check-cast v0, LT0/i;

    iget-object v3, v0, LT0/i;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v1, v4}, LA0/b;->f(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4, v3}, LA0/b;->g(ILjava/lang/String;)V

    :goto_2
    iget v3, v0, LT0/i;->b:I

    invoke-static {v3}, LL4/d;->G(I)I

    move-result v3

    int-to-long v5, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v5, v6}, LA0/b;->e(IJ)V

    iget-object v5, v0, LT0/i;->c:Ljava/lang/String;

    const/4 v6, 0x3

    if-nez v5, :cond_3

    invoke-virtual {v1, v6}, LA0/b;->f(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v6, v5}, LA0/b;->g(ILjava/lang/String;)V

    :goto_3
    iget-object v5, v0, LT0/i;->d:Ljava/lang/String;

    const/4 v7, 0x4

    if-nez v5, :cond_4

    invoke-virtual {v1, v7}, LA0/b;->f(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v7, v5}, LA0/b;->g(ILjava/lang/String;)V

    :goto_4
    iget-object v5, v0, LT0/i;->e:Landroidx/work/g;

    invoke-static {v5}, Landroidx/work/g;->c(Landroidx/work/g;)[B

    move-result-object v5

    const/4 v8, 0x5

    if-nez v5, :cond_5

    invoke-virtual {v1, v8}, LA0/b;->f(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v8, v5}, LA0/b;->c(I[B)V

    :goto_5
    iget-object v5, v0, LT0/i;->f:Landroidx/work/g;

    invoke-static {v5}, Landroidx/work/g;->c(Landroidx/work/g;)[B

    move-result-object v5

    const/4 v9, 0x6

    if-nez v5, :cond_6

    invoke-virtual {v1, v9}, LA0/b;->f(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v9, v5}, LA0/b;->c(I[B)V

    :goto_6
    const/4 v5, 0x7

    iget-wide v10, v0, LT0/i;->g:J

    invoke-virtual {v1, v5, v10, v11}, LA0/b;->e(IJ)V

    const/16 v5, 0x8

    iget-wide v10, v0, LT0/i;->h:J

    invoke-virtual {v1, v5, v10, v11}, LA0/b;->e(IJ)V

    const/16 v5, 0x9

    iget-wide v10, v0, LT0/i;->i:J

    invoke-virtual {v1, v5, v10, v11}, LA0/b;->e(IJ)V

    iget v5, v0, LT0/i;->k:I

    int-to-long v10, v5

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v10, v11}, LA0/b;->e(IJ)V

    iget v5, v0, LT0/i;->l:I

    invoke-static {v5}, Ls/e;->d(I)I

    move-result v10

    const-string v12, " to int"

    const-string v13, "Could not convert "

    if-eqz v10, :cond_a

    if-ne v10, v4, :cond_7

    move v5, v4

    goto :goto_8

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eq v5, v3, :cond_9

    const/4 v3, 0x2

    if-eq v5, v3, :cond_8

    const-string v3, "null"

    goto :goto_7

    :cond_8
    const-string v3, "LINEAR"

    goto :goto_7

    :cond_9
    const-string v3, "EXPONENTIAL"

    :goto_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v5, 0x0

    :goto_8
    const/16 v10, 0xb

    int-to-long v14, v5

    invoke-virtual {v1, v10, v14, v15}, LA0/b;->e(IJ)V

    const/16 v5, 0xc

    iget-wide v14, v0, LT0/i;->m:J

    invoke-virtual {v1, v5, v14, v15}, LA0/b;->e(IJ)V

    const/16 v5, 0xd

    iget-wide v14, v0, LT0/i;->n:J

    invoke-virtual {v1, v5, v14, v15}, LA0/b;->e(IJ)V

    const/16 v5, 0xe

    iget-wide v14, v0, LT0/i;->o:J

    invoke-virtual {v1, v5, v14, v15}, LA0/b;->e(IJ)V

    const/16 v5, 0xf

    iget-wide v14, v0, LT0/i;->p:J

    invoke-virtual {v1, v5, v14, v15}, LA0/b;->e(IJ)V

    iget-boolean v5, v0, LT0/i;->q:Z

    const/16 v10, 0x10

    int-to-long v14, v5

    invoke-virtual {v1, v10, v14, v15}, LA0/b;->e(IJ)V

    iget v5, v0, LT0/i;->r:I

    invoke-static {v5}, Ls/e;->d(I)I

    move-result v10

    if-eqz v10, :cond_e

    if-ne v10, v4, :cond_b

    move v5, v4

    goto :goto_a

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eq v5, v3, :cond_d

    const/4 v3, 0x2

    if-eq v5, v3, :cond_c

    const-string v3, "null"

    goto :goto_9

    :cond_c
    const-string v3, "DROP_WORK_REQUEST"

    goto :goto_9

    :cond_d
    const-string v3, "RUN_AS_NON_EXPEDITED_WORK_REQUEST"

    :goto_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v5, 0x0

    :goto_a
    const/16 v10, 0x11

    int-to-long v14, v5

    invoke-virtual {v1, v10, v14, v15}, LA0/b;->e(IJ)V

    iget-object v0, v0, LT0/i;->j:Landroidx/work/c;

    const/16 v15, 0x15

    const/16 v8, 0x14

    const/16 v11, 0x13

    const/16 v5, 0x12

    if-eqz v0, :cond_1a

    iget v10, v0, Landroidx/work/c;->a:I

    invoke-static {v10}, Ls/e;->d(I)I

    move-result v14

    if-eqz v14, :cond_13

    if-eq v14, v4, :cond_14

    if-eq v14, v3, :cond_12

    if-eq v14, v6, :cond_11

    if-eq v14, v7, :cond_10

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_f

    if-ne v10, v9, :cond_f

    const/4 v4, 0x5

    goto :goto_b

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, LC/a;->z(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move v4, v7

    goto :goto_b

    :cond_11
    move v4, v6

    goto :goto_b

    :cond_12
    move v4, v3

    goto :goto_b

    :cond_13
    const/4 v4, 0x0

    :cond_14
    :goto_b
    int-to-long v3, v4

    invoke-virtual {v1, v5, v3, v4}, LA0/b;->e(IJ)V

    iget-boolean v3, v0, Landroidx/work/c;->b:Z

    int-to-long v3, v3

    invoke-virtual {v1, v11, v3, v4}, LA0/b;->e(IJ)V

    iget-boolean v3, v0, Landroidx/work/c;->c:Z

    int-to-long v3, v3

    invoke-virtual {v1, v8, v3, v4}, LA0/b;->e(IJ)V

    iget-boolean v3, v0, Landroidx/work/c;->d:Z

    int-to-long v3, v3

    invoke-virtual {v1, v15, v3, v4}, LA0/b;->e(IJ)V

    iget-boolean v3, v0, Landroidx/work/c;->e:Z

    int-to-long v3, v3

    const/16 v5, 0x16

    invoke-virtual {v1, v5, v3, v4}, LA0/b;->e(IJ)V

    iget-wide v3, v0, Landroidx/work/c;->f:J

    const/16 v5, 0x17

    invoke-virtual {v1, v5, v3, v4}, LA0/b;->e(IJ)V

    iget-wide v3, v0, Landroidx/work/c;->g:J

    const/16 v5, 0x18

    invoke-virtual {v1, v5, v3, v4}, LA0/b;->e(IJ)V

    iget-object v0, v0, Landroidx/work/c;->h:Landroidx/work/e;

    iget-object v3, v0, Landroidx/work/e;->a:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_15

    goto/16 :goto_11

    :cond_15
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, v0, Landroidx/work/e;->a:Ljava/util/HashSet;

    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/d;

    iget-object v6, v4, Landroidx/work/d;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v4, v4, Landroidx/work/d;->b:Z

    invoke-virtual {v5, v4}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    goto :goto_12

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_e

    :cond_16
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_12

    :catch_3
    move-exception v0

    :goto_e
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_17

    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_f
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_11
    if-nez v4, :cond_18

    const/16 v3, 0x19

    invoke-virtual {v1, v3}, LA0/b;->f(I)V

    goto :goto_15

    :cond_18
    const/16 v3, 0x19

    invoke-virtual {v1, v3, v4}, LA0/b;->c(I[B)V

    goto :goto_15

    :goto_12
    if-eqz v4, :cond_19

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_13

    :catch_5
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_19
    :goto_13
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_14

    :catch_6
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    throw v1

    :cond_1a
    invoke-virtual {v1, v5}, LA0/b;->f(I)V

    invoke-virtual {v1, v11}, LA0/b;->f(I)V

    invoke-virtual {v1, v8}, LA0/b;->f(I)V

    invoke-virtual {v1, v15}, LA0/b;->f(I)V

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, LA0/b;->f(I)V

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, LA0/b;->f(I)V

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, LA0/b;->f(I)V

    const/16 v3, 0x19

    invoke-virtual {v1, v3}, LA0/b;->f(I)V

    :goto_15
    return-void

    :pswitch_1
    move-object/from16 v0, p2

    check-cast v0, LT0/g;

    iget-object v3, v0, LT0/g;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_1b

    invoke-virtual {v1, v4}, LA0/b;->f(I)V

    goto :goto_16

    :cond_1b
    invoke-virtual {v1, v4, v3}, LA0/b;->g(ILjava/lang/String;)V

    :goto_16
    iget-object v0, v0, LT0/g;->b:Landroidx/work/g;

    invoke-static {v0}, Landroidx/work/g;->c(Landroidx/work/g;)[B

    move-result-object v0

    const/4 v3, 0x2

    if-nez v0, :cond_1c

    invoke-virtual {v1, v3}, LA0/b;->f(I)V

    goto :goto_17

    :cond_1c
    invoke-virtual {v1, v3, v0}, LA0/b;->c(I[B)V

    :goto_17
    return-void

    :pswitch_2
    move-object/from16 v0, p2

    check-cast v0, LT0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, LA0/b;->f(I)V

    const/4 v3, 0x2

    iget-object v0, v0, LT0/f;->a:Ljava/lang/String;

    if-nez v0, :cond_1d

    invoke-virtual {v1, v3}, LA0/b;->f(I)V

    goto :goto_18

    :cond_1d
    invoke-virtual {v1, v3, v0}, LA0/b;->g(ILjava/lang/String;)V

    :goto_18
    return-void

    :pswitch_3
    move-object/from16 v0, p2

    check-cast v0, LT0/d;

    iget-object v3, v0, LT0/d;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_1e

    invoke-virtual {v1, v4}, LA0/b;->f(I)V

    goto :goto_19

    :cond_1e
    invoke-virtual {v1, v4, v3}, LA0/b;->g(ILjava/lang/String;)V

    :goto_19
    iget v0, v0, LT0/d;->b:I

    int-to-long v3, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3, v4}, LA0/b;->e(IJ)V

    return-void

    :pswitch_4
    move-object/from16 v0, p2

    check-cast v0, LT0/c;

    iget-object v3, v0, LT0/c;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_1f

    invoke-virtual {v1, v4}, LA0/b;->f(I)V

    goto :goto_1a

    :cond_1f
    invoke-virtual {v1, v4, v3}, LA0/b;->g(ILjava/lang/String;)V

    :goto_1a
    const/4 v3, 0x2

    iget-object v0, v0, LT0/c;->b:Ljava/lang/Long;

    if-nez v0, :cond_20

    invoke-virtual {v1, v3}, LA0/b;->f(I)V

    goto :goto_1b

    :cond_20
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, LA0/b;->e(IJ)V

    :goto_1b
    return-void

    :pswitch_5
    move-object/from16 v0, p2

    check-cast v0, LT0/a;

    iget-object v3, v0, LT0/a;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_21

    invoke-virtual {v1, v4}, LA0/b;->f(I)V

    goto :goto_1c

    :cond_21
    invoke-virtual {v1, v4, v3}, LA0/b;->g(ILjava/lang/String;)V

    :goto_1c
    const/4 v3, 0x2

    iget-object v0, v0, LT0/a;->b:Ljava/lang/String;

    if-nez v0, :cond_22

    invoke-virtual {v1, v3}, LA0/b;->f(I)V

    goto :goto_1d

    :cond_22
    invoke-virtual {v1, v3, v0}, LA0/b;->g(ILjava/lang/String;)V

    :goto_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lv0/k;->a()LA0/f;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, LT0/b;->d(LA0/f;Ljava/lang/Object;)V

    iget-object p1, v0, LA0/f;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lv0/k;->c(LA0/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lv0/k;->c(LA0/f;)V

    throw p1
.end method
