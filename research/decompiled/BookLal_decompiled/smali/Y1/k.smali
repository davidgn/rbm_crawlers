.class public final LY1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LT1/f;

.field public final c:LZ1/d;

.field public final d:LY1/d;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:La2/c;

.field public final g:Lb2/a;

.field public final h:Lb2/a;

.field public final i:LZ1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;LT1/f;LZ1/d;LY1/d;Ljava/util/concurrent/Executor;La2/c;Lb2/a;Lb2/a;LZ1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY1/k;->a:Landroid/content/Context;

    iput-object p2, p0, LY1/k;->b:LT1/f;

    iput-object p3, p0, LY1/k;->c:LZ1/d;

    iput-object p4, p0, LY1/k;->d:LY1/d;

    iput-object p5, p0, LY1/k;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, LY1/k;->f:La2/c;

    iput-object p7, p0, LY1/k;->g:Lb2/a;

    iput-object p8, p0, LY1/k;->h:Lb2/a;

    iput-object p9, p0, LY1/k;->i:LZ1/c;

    return-void
.end method


# virtual methods
.method public final a(LS1/j;I)V
    .locals 43

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget-object v0, v7, LY1/k;->b:LT1/f;

    iget-object v4, v8, LS1/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, LT1/f;->a(Ljava/lang/String;)LT1/h;

    move-result-object v4

    const-wide/16 v10, 0x0

    :goto_0
    new-instance v0, LY1/h;

    invoke-direct {v0, v7, v8, v3}, LY1/h;-><init>(LY1/k;LS1/j;I)V

    iget-object v12, v7, LY1/k;->f:La2/c;

    check-cast v12, LZ1/h;

    invoke-virtual {v12, v0}, LZ1/h;->m(La2/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, LY1/h;

    invoke-direct {v0, v7, v8, v9}, LY1/h;-><init>(LY1/k;LS1/j;I)V

    invoke-virtual {v12, v0}, LZ1/h;->m(La2/b;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const-wide/16 v14, -0x1

    iget-object v5, v8, LS1/j;->b:[B

    if-nez v4, :cond_1

    const-string v6, "Uploader"

    const-string v9, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v6, v9, v8}, Landroid/support/v4/media/session/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, LT1/a;

    invoke-direct {v6, v0, v14, v15}, LT1/a;-><init>(IJ)V

    move-object/from16 v30, v4

    move v4, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_12

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, LZ1/b;

    iget-object v0, v0, LZ1/b;->c:LS1/i;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    const-string v9, "proto"

    if-eqz v0, :cond_4

    iget-object v0, v7, LY1/k;->i:LZ1/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, LQ1/b;

    invoke-direct {v14, v0, v1}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v14}, LZ1/h;->m(La2/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV1/a;

    new-instance v14, LC4/F;

    invoke-direct {v14, v2}, LC4/F;-><init>(I)V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v14, LC4/F;->g:Ljava/lang/Object;

    iget-object v15, v7, LY1/k;->g:Lb2/a;

    invoke-interface {v15}, Lb2/a;->getTime()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v14, LC4/F;->e:Ljava/lang/Object;

    iget-object v15, v7, LY1/k;->h:Lb2/a;

    invoke-interface {v15}, Lb2/a;->getTime()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v14, LC4/F;->f:Ljava/lang/Object;

    const-string v15, "GDT_CLIENT_METRICS"

    iput-object v15, v14, LC4/F;->b:Ljava/io/Serializable;

    new-instance v15, LS1/l;

    new-instance v2, LP1/b;

    invoke-direct {v2, v9}, LP1/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LS1/o;->a:Lcom/google/firebase/encoders/proto/ProtobufEncoder;

    invoke-virtual {v1, v0}, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-direct {v15, v2, v0}, LS1/l;-><init>(LP1/b;[B)V

    iput-object v15, v14, LC4/F;->d:Ljava/lang/Object;

    invoke-virtual {v14}, LC4/F;->c()LS1/i;

    move-result-object v0

    move-object v1, v4

    check-cast v1, LQ1/e;

    invoke-virtual {v1, v0}, LQ1/e;->a(LS1/i;)LS1/i;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v4

    check-cast v0, LQ1/e;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LS1/i;

    iget-object v14, v6, LS1/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v15, "CctTransportBackend"

    if-eqz v6, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LS1/i;

    sget-object v18, LR1/y;->a:LR1/y;

    iget-object v3, v0, LQ1/e;->f:Lb2/a;

    invoke-interface {v3}, Lb2/a;->getTime()J

    move-result-wide v21

    iget-object v3, v0, LQ1/e;->e:Lb2/a;

    invoke-interface {v3}, Lb2/a;->getTime()J

    move-result-wide v23

    const-string v3, "sdk-version"

    invoke-virtual {v14, v3}, LS1/i;->b(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-string v3, "model"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v3, "hardware"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v3, "device"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v3, "product"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v3, "os-uild"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v3, "manufacturer"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v3, "fingerprint"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v3, "country"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v3, "locale"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v3, "mcc_mnc"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v3, "application_build"

    invoke-virtual {v14, v3}, LS1/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    new-instance v3, LR1/i;

    move-object/from16 v25, v3

    invoke-direct/range {v25 .. v37}, LR1/i;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, LR1/k;

    invoke-direct {v14, v3}, LR1/k;-><init>(LR1/i;)V

    :try_start_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v26, v3

    const/16 v27, 0x0

    goto :goto_5

    :catch_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v27, v3

    const/16 v26, 0x0

    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v29, v1

    move-object/from16 v1, v19

    check-cast v1, LS1/i;

    move-object/from16 v30, v4

    iget-object v4, v1, LS1/i;->c:LS1/l;

    move-object/from16 v19, v6

    iget-object v6, v4, LS1/l;->a:LP1/b;

    new-instance v8, LP1/b;

    invoke-direct {v8, v9}, LP1/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, LP1/b;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v4, v4, LS1/l;->b:[B

    if-eqz v8, :cond_7

    new-instance v6, LR1/l;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v4, v6, LR1/l;->e:Ljava/lang/Object;

    move-object/from16 v31, v9

    goto :goto_7

    :cond_7
    new-instance v8, LP1/b;

    move-object/from16 v31, v9

    const-string v9, "json"

    invoke-direct {v8, v9}, LP1/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, LP1/b;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    new-instance v6, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v6, v4, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v4, LR1/l;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v6, v4, LR1/l;->f:Ljava/lang/Object;

    move-object v6, v4

    :goto_7
    iget-wide v8, v1, LS1/i;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v6, LR1/l;->a:Ljava/lang/Object;

    iget-wide v8, v1, LS1/i;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v6, LR1/l;->b:Ljava/lang/Object;

    iget-object v4, v1, LS1/i;->f:Ljava/util/HashMap;

    const-string v8, "tz-offset"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_8

    const-wide/16 v8, 0x0

    goto :goto_8

    :cond_8
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v6, LR1/l;->c:Ljava/lang/Object;

    const-string v4, "net-type"

    invoke-virtual {v1, v4}, LS1/i;->b(Ljava/lang/String;)I

    move-result v4

    sget-object v8, LR1/w;->a:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR1/w;

    const-string v8, "mobile-subtype"

    invoke-virtual {v1, v8}, LS1/i;->b(Ljava/lang/String;)I

    move-result v8

    sget-object v9, LR1/v;->a:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LR1/v;

    new-instance v9, LR1/p;

    invoke-direct {v9, v4, v8}, LR1/p;-><init>(LR1/w;LR1/v;)V

    iput-object v9, v6, LR1/l;->g:Ljava/lang/Object;

    iget-object v1, v1, LS1/i;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    iput-object v1, v6, LR1/l;->d:Ljava/lang/Object;

    :cond_9
    iget-object v1, v6, LR1/l;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_a

    const-string v1, " eventTimeMs"

    goto :goto_9

    :cond_a
    const-string v1, ""

    :goto_9
    iget-object v4, v6, LR1/l;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_b

    const-string v4, " eventUptimeMs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    iget-object v4, v6, LR1/l;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_c

    const-string v4, " timezoneOffsetSeconds"

    invoke-static {v1, v4}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v1, LR1/m;

    iget-object v4, v6, LR1/l;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    iget-object v4, v6, LR1/l;->d:Ljava/lang/Object;

    move-object/from16 v35, v4

    check-cast v35, Ljava/lang/Integer;

    iget-object v4, v6, LR1/l;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    iget-object v4, v6, LR1/l;->e:Ljava/lang/Object;

    move-object/from16 v38, v4

    check-cast v38, [B

    iget-object v4, v6, LR1/l;->f:Ljava/lang/Object;

    move-object/from16 v39, v4

    check-cast v39, Ljava/lang/String;

    iget-object v4, v6, LR1/l;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    iget-object v4, v6, LR1/l;->g:Ljava/lang/Object;

    move-object/from16 v42, v4

    check-cast v42, LR1/p;

    move-object/from16 v32, v1

    invoke-direct/range {v32 .. v42}, LR1/m;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLR1/p;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_a
    move-object/from16 v8, p1

    move-object/from16 v6, v19

    move-object/from16 v1, v29

    move-object/from16 v4, v30

    move-object/from16 v9, v31

    goto/16 :goto_6

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string v1, "TRuntime."

    invoke-virtual {v1, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Received event of unsupported encoding "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Skipping..."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    move-object/from16 v29, v1

    move-object/from16 v30, v4

    move-object/from16 v31, v9

    const/4 v4, 0x5

    new-instance v1, LR1/n;

    move-object/from16 v20, v1

    move-object/from16 v25, v14

    move-object/from16 v28, v3

    invoke-direct/range {v20 .. v28}, LR1/n;-><init>(JJLR1/k;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p1

    move-object/from16 v1, v29

    move-object/from16 v4, v30

    move-object/from16 v9, v31

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_11
    move-object/from16 v30, v4

    const/4 v4, 0x5

    new-instance v1, LR1/j;

    invoke-direct {v1, v2}, LR1/j;-><init>(Ljava/util/ArrayList;)V

    iget-object v2, v0, LQ1/e;->d:Ljava/net/URL;

    if-eqz v5, :cond_13

    :try_start_1
    invoke-static {v5}, LQ1/a;->a([B)LQ1/a;

    move-result-object v3

    iget-object v6, v3, LQ1/a;->b:Ljava/lang/String;

    if-eqz v6, :cond_12

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    :goto_b
    iget-object v3, v3, LQ1/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_14

    invoke-static {v3}, LQ1/e;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    new-instance v0, LT1/a;

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, LT1/a;-><init>(IJ)V

    move-object v6, v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_13
    const/4 v6, 0x0

    :cond_14
    :goto_c
    :try_start_2
    new-instance v3, LQ1/c;

    invoke-direct {v3, v2, v1, v6}, LQ1/c;-><init>(Ljava/net/URL;LR1/j;Ljava/lang/String;)V

    new-instance v1, LQ1/b;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v2, 0x0

    :try_start_3
    invoke-direct {v1, v0, v2}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    move v0, v4

    :cond_15
    invoke-virtual {v1, v3}, LQ1/b;->b(Ljava/lang/Object;)LQ1/d;

    move-result-object v6

    iget-object v8, v6, LQ1/d;->c:Ljava/lang/Object;

    check-cast v8, Ljava/net/URL;

    if-eqz v8, :cond_16

    const-string v9, "Following redirect to: %s"

    invoke-static {v15, v9, v8}, Landroid/support/v4/media/session/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, LQ1/c;

    iget-object v14, v3, LQ1/c;->b:LR1/j;

    iget-object v3, v3, LQ1/c;->c:Ljava/lang/String;

    invoke-direct {v9, v8, v14, v3}, LQ1/c;-><init>(Ljava/net/URL;LR1/j;Ljava/lang/String;)V

    move-object v3, v9

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_17

    add-int/lit8 v0, v0, -0x1

    const/4 v8, 0x1

    if-ge v0, v8, :cond_15

    :cond_17
    iget v0, v6, LQ1/d;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_18

    iget-wide v0, v6, LQ1/d;->b:J

    new-instance v3, LT1/a;

    const/4 v6, 0x1

    invoke-direct {v3, v6, v0, v1}, LT1/a;-><init>(IJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v6, v3

    :goto_e
    const/4 v1, 0x2

    goto :goto_12

    :catch_2
    move-exception v0

    goto :goto_11

    :cond_18
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1b

    const/16 v1, 0x194

    if-ne v0, v1, :cond_19

    goto :goto_10

    :cond_19
    const/16 v1, 0x190

    if-ne v0, v1, :cond_1a

    :try_start_4
    new-instance v0, LT1/a;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v1, 0x4

    const-wide/16 v8, -0x1

    :try_start_5
    invoke-direct {v0, v1, v8, v9}, LT1/a;-><init>(IJ)V

    :goto_f
    move-object v6, v0

    goto :goto_e

    :catch_3
    move-exception v0

    const-wide/16 v8, -0x1

    goto :goto_11

    :cond_1a
    const-wide/16 v8, -0x1

    new-instance v0, LT1/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v8, v9}, LT1/a;-><init>(IJ)V

    goto :goto_f

    :cond_1b
    :goto_10
    new-instance v0, LT1/a;

    const/4 v1, 0x2

    const-wide/16 v8, -0x1

    invoke-direct {v0, v1, v8, v9}, LT1/a;-><init>(IJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_f

    :catch_4
    move-exception v0

    const/4 v2, 0x0

    :goto_11
    const-string v1, "Could not make request to the backend"

    invoke-static {v0, v15, v1}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LT1/a;

    const/4 v1, 0x2

    const-wide/16 v8, -0x1

    invoke-direct {v0, v1, v8, v9}, LT1/a;-><init>(IJ)V

    move-object v6, v0

    :goto_12
    iget v0, v6, LT1/a;->a:I

    if-ne v0, v1, :cond_1c

    new-instance v0, LY1/i;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p1

    move-wide v5, v10

    invoke-direct/range {v1 .. v6}, LY1/i;-><init>(LY1/k;Ljava/lang/Iterable;LS1/j;J)V

    invoke-virtual {v12, v0}, LZ1/h;->m(La2/b;)Ljava/lang/Object;

    const/4 v1, 0x1

    add-int/lit8 v0, p2, 0x1

    iget-object v2, v7, LY1/k;->d:LY1/d;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v0, v1}, LY1/d;->a(LS1/j;IZ)V

    return-void

    :cond_1c
    move-object/from16 v3, p1

    const/4 v1, 0x1

    new-instance v8, LY0/Q0;

    invoke-direct {v8, v1, v7, v13}, LY0/Q0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v8}, LZ1/h;->m(La2/b;)Ljava/lang/Object;

    if-ne v0, v1, :cond_1e

    iget-wide v0, v6, LT1/a;->b:J

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    if-eqz v5, :cond_1d

    new-instance v0, LQ1/b;

    const/4 v1, 0x7

    invoke-direct {v0, v7, v1}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v0}, LZ1/h;->m(La2/b;)Ljava/lang/Object;

    :cond_1d
    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_14

    :cond_1e
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LZ1/b;

    iget-object v5, v5, LZ1/b;->c:LS1/i;

    iget-object v5, v5, LS1/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_1f
    const/4 v6, 0x1

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_20
    const/4 v6, 0x1

    new-instance v1, LY0/Q0;

    const/4 v5, 0x2

    invoke-direct {v1, v5, v7, v0}, LY0/Q0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v1}, LZ1/h;->m(La2/b;)Ljava/lang/Object;

    :goto_14
    move-object v8, v3

    move v1, v4

    move v9, v6

    move-object/from16 v4, v30

    move v3, v2

    move v2, v5

    goto/16 :goto_0

    :cond_21
    move-object v3, v8

    new-instance v0, LY1/j;

    invoke-direct {v0, v7, v10, v11, v3}, LY1/j;-><init>(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v0}, LZ1/h;->m(La2/b;)Ljava/lang/Object;

    return-void
.end method
