.class public final Ls3/m;
.super Lj3/T;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "outlier_detection_experimental"

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(Lj3/i;)Lj3/S;
    .locals 1

    new-instance v0, Ls3/l;

    invoke-direct {v0, p1}, Ls3/l;-><init>(Lj3/i;)V

    return-object v0
.end method

.method public e(Ljava/util/Map;)Lj3/i0;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "interval"

    invoke-static {v1, v0}, Ll3/r0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "baseEjectionTime"

    invoke-static {v2, v0}, Ll3/r0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "maxEjectionTime"

    invoke-static {v3, v0}, Ll3/r0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "maxEjectionPercentage"

    invoke-static {v4, v0}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v4

    const-wide v5, 0x2540be400L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide v6, 0x6fc23ac00L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v1, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, v5

    :goto_0
    if-eqz v2, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v10, v6

    :goto_1
    if-eqz v3, :cond_2

    move-object v11, v3

    goto :goto_2

    :cond_2
    move-object v11, v6

    :goto_2
    if-eqz v4, :cond_3

    move-object v12, v4

    goto :goto_3

    :cond_3
    move-object v12, v7

    :goto_3
    const-string v1, "successRateEjection"

    invoke-static {v1, v0}, Ll3/r0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "requestVolume"

    const-string v3, "minimumHosts"

    const-string v4, "enforcementPercentage"

    const/4 v5, 0x5

    const/16 v6, 0x64

    if-eqz v1, :cond_b

    const/16 v14, 0x76c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v7, "stdevFactor"

    invoke-static {v7, v1}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v1}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v3, v1}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v2, v1}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v7, :cond_4

    move-object v14, v7

    :cond_4
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v7, v6, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    invoke-static {v7}, LZ2/l;->e(Z)V

    move-object/from16 v7, v17

    goto :goto_5

    :cond_6
    move-object v7, v15

    :goto_5
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-ltz v16, :cond_7

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    :goto_6
    invoke-static/range {v16 .. v16}, LZ2/l;->e(Z)V

    move-object/from16 v8, v18

    goto :goto_7

    :cond_8
    move-object/from16 v8, v16

    :goto_7
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ltz v15, :cond_9

    const/4 v15, 0x1

    goto :goto_8

    :cond_9
    const/4 v15, 0x0

    :goto_8
    invoke-static {v15}, LZ2/l;->e(Z)V

    move-object v15, v1

    :cond_a
    new-instance v1, Ls3/h;

    invoke-direct {v1, v14, v7, v8, v15}, Ls3/h;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_9

    :cond_b
    const/4 v1, 0x0

    :goto_9
    const-string v7, "failurePercentageEjection"

    invoke-static {v7, v0}, Ll3/r0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_14

    const/16 v8, 0x55

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v15, 0x32

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v13, "threshold"

    invoke-static {v13, v7}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v4, v7}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v7}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v7}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_c

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v7, v6, :cond_c

    const/4 v7, 0x1

    goto :goto_a

    :cond_c
    const/4 v7, 0x0

    :goto_a
    invoke-static {v7}, LZ2/l;->e(Z)V

    move-object v8, v13

    :cond_d
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_e

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v7, v6, :cond_e

    const/4 v6, 0x1

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    :goto_b
    invoke-static {v6}, LZ2/l;->e(Z)V

    move-object v14, v4

    :cond_f
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_c
    invoke-static {v4}, LZ2/l;->e(Z)V

    move-object v5, v3

    :cond_11
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_12

    const/4 v7, 0x1

    goto :goto_d

    :cond_12
    const/4 v7, 0x0

    :goto_d
    invoke-static {v7}, LZ2/l;->e(Z)V

    move-object v15, v2

    :cond_13
    new-instance v2, Ls3/h;

    invoke-direct {v2, v8, v14, v5, v15}, Ls3/h;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v14, v2

    goto :goto_e

    :cond_14
    const/4 v14, 0x0

    :goto_e
    const-string v2, "childPolicy"

    invoke-static {v2, v0}, Ll3/r0;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_15

    const/4 v13, 0x0

    goto :goto_f

    :cond_15
    invoke-static {v2}, Ll3/r0;->a(Ljava/util/List;)V

    move-object v13, v2

    :goto_f
    invoke-static {v13}, Ll3/J1;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_10

    :cond_16
    invoke-static {}, Lj3/U;->a()Lj3/U;

    move-result-object v0

    invoke-static {v2, v0}, Ll3/J1;->v(Ljava/util/List;Lj3/U;)Lj3/i0;

    move-result-object v0

    iget-object v2, v0, Lj3/i0;->a:Lj3/r0;

    if-eqz v2, :cond_17

    return-object v0

    :cond_17
    iget-object v0, v0, Lj3/i0;->b:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ll3/I1;

    if-eqz v15, :cond_19

    if-eqz v15, :cond_18

    new-instance v0, Ls3/i;

    move-object v8, v0

    move-object v13, v1

    invoke-direct/range {v8 .. v15}, Ls3/i;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ls3/h;Ls3/h;Ll3/I1;)V

    new-instance v1, Lj3/i0;

    invoke-direct {v1, v0}, Lj3/i0;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1a
    :goto_10
    sget-object v1, Lj3/r0;->l:Lj3/r0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No child policy in outlier_detection_experimental LB policy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    new-instance v1, Lj3/i0;

    invoke-direct {v1, v0}, Lj3/i0;-><init>(Lj3/r0;)V

    return-object v1
.end method
