.class public final Lcom/google/android/recaptcha/internal/zzw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/recaptcha/internal/zzw;Landroid/app/Application;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzr;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    new-instance p3, Lcom/google/android/recaptcha/internal/zzr;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/recaptcha/internal/zzr;-><init>(Ljava/lang/String;JJILkotlin/jvm/internal/e;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/recaptcha/internal/zzw;->zza(Landroid/app/Application;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzr;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/app/Application;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzr;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/google/android/recaptcha/internal/zzv;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/recaptcha/internal/zzv;

    iget v2, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/recaptcha/internal/zzv;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/google/android/recaptcha/internal/zzv;-><init>(Lcom/google/android/recaptcha/internal/zzw;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/google/android/recaptcha/internal/zzv;->zze:Ljava/lang/Object;

    sget-object v3, Lc4/a;->a:Lc4/a;

    iget v4, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v1, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    check-cast v1, LB4/a;

    :try_start_0
    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_2
    iget-object v4, v1, Lcom/google/android/recaptcha/internal/zzv;->zzd:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/recaptcha/internal/zzda;

    iget-object v7, v1, Lcom/google/android/recaptcha/internal/zzv;->zzc:Ljava/lang/Object;

    check-cast v7, LB4/a;

    iget-object v8, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/recaptcha/internal/zzr;

    iget-object v9, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    check-cast v9, Landroid/app/Application;

    :try_start_1
    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V

    check-cast v0, LY3/g;

    iget-object v0, v0, LY3/g;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto/16 :goto_d

    :cond_3
    iget-object v4, v1, Lcom/google/android/recaptcha/internal/zzv;->zzd:Ljava/lang/Object;

    check-cast v4, LB4/a;

    iget-object v8, v1, Lcom/google/android/recaptcha/internal/zzv;->zzh:Lcom/google/android/recaptcha/internal/zzw;

    check-cast v8, Landroid/webkit/WebView;

    iget-object v9, v1, Lcom/google/android/recaptcha/internal/zzv;->zzc:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/recaptcha/internal/zzr;

    iget-object v10, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    check-cast v11, Landroid/app/Application;

    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V

    move-object v0, v9

    move-object v15, v10

    move-object v9, v8

    move-object v8, v4

    move-object v4, v11

    goto :goto_1

    :cond_4
    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zze()LB4/a;

    move-result-object v0

    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    move-object/from16 v9, p2

    iput-object v9, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    move-object/from16 v10, p3

    iput-object v10, v1, Lcom/google/android/recaptcha/internal/zzv;->zzc:Ljava/lang/Object;

    iput-object v5, v1, Lcom/google/android/recaptcha/internal/zzv;->zzh:Lcom/google/android/recaptcha/internal/zzw;

    iput-object v0, v1, Lcom/google/android/recaptcha/internal/zzv;->zzd:Ljava/lang/Object;

    iput v8, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    invoke-interface {v0, v1}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v3, :cond_12

    move-object v8, v0

    move-object v15, v9

    move-object v0, v10

    move-object v9, v5

    :goto_1
    :try_start_2
    const-string v10, "android.permission.INTERNET"

    invoke-static {v4, v10}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_11

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zza()Lcom/google/android/recaptcha/internal/zzaa;

    move-result-object v10

    if-eqz v10, :cond_5

    goto/16 :goto_9

    :cond_5
    sget-object v14, Lcom/google/android/recaptcha/internal/zzaa;->zza:Lcom/google/android/recaptcha/internal/zzw;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/recaptcha/internal/zzaa;->zzg(Ljava/lang/String;)V

    sget-object v10, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance v10, Lcom/google/android/recaptcha/internal/zzaf;

    sget-object v17, Lcom/google/android/recaptcha/internal/zzkw;->zze:Lcom/google/android/recaptcha/internal/zzkw;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzc()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzd()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_6

    move-object/from16 v19, v5

    goto :goto_2

    :cond_6
    move-object/from16 v19, v11

    :goto_2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzd()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    move-object/from16 v20, v5

    goto :goto_3

    :cond_7
    move-object/from16 v20, v11

    :goto_3
    const/16 v21, 0x0

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/recaptcha/internal/zzs;

    invoke-direct {v11}, Lcom/google/android/recaptcha/internal/zzs;-><init>()V

    invoke-static {v10, v15, v11}, Lcom/google/android/recaptcha/internal/zzai;->zzb(Lcom/google/android/recaptcha/internal/zzaf;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzs;)V

    new-instance v13, Lcom/google/android/recaptcha/internal/zzda;

    if-nez v9, :cond_8

    new-instance v9, Landroid/webkit/WebView;

    invoke-direct {v9, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    :cond_8
    move-object/from16 v16, v9

    goto :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :goto_4
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzc()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzd()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    move-object/from16 v18, v5

    goto :goto_5

    :cond_9
    move-object/from16 v18, v9

    :goto_5
    new-instance v19, Lcom/google/android/recaptcha/internal/zzao;

    new-instance v11, Lcom/google/android/recaptcha/internal/zzaq;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzr;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Lcom/google/android/recaptcha/internal/zzaq;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x4

    move-object/from16 v9, v19

    move-object v10, v4

    move-object/from16 p1, v13

    move/from16 v13, v21

    move-object v6, v14

    move-object/from16 v14, v20

    invoke-direct/range {v9 .. v14}, Lcom/google/android/recaptcha/internal/zzao;-><init>(Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzap;Lt4/u;ILkotlin/jvm/internal/e;)V

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzp;->zzb()Lt4/u;

    move-result-object v20

    move-object/from16 v9, p1

    move-object/from16 v10, v16

    move-object v11, v15

    move-object v12, v4

    move-object v13, v0

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    invoke-direct/range {v9 .. v17}, Lcom/google/android/recaptcha/internal/zzda;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzaj;Lt4/u;)V

    iput-object v4, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    iput-object v0, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    iput-object v8, v1, Lcom/google/android/recaptcha/internal/zzv;->zzc:Ljava/lang/Object;

    iput-object v6, v1, Lcom/google/android/recaptcha/internal/zzv;->zzh:Lcom/google/android/recaptcha/internal/zzw;

    move-object/from16 v6, p1

    iput-object v6, v1, Lcom/google/android/recaptcha/internal/zzv;->zzd:Ljava/lang/Object;

    iput v7, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    invoke-virtual {v6, v1}, Lcom/google/android/recaptcha/internal/zzda;->zzg(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v7, v3, :cond_10

    move-object v9, v4

    move-object v4, v6

    move-object/from16 v22, v8

    move-object v8, v0

    move-object v0, v7

    move-object/from16 v7, v22

    :goto_6
    :try_start_3
    invoke-static {v0}, LY3/g;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v10, Lcom/google/android/recaptcha/internal/zzaa;

    invoke-direct {v10, v4}, Lcom/google/android/recaptcha/internal/zzaa;-><init>(Lcom/google/android/recaptcha/internal/zzda;)V

    sget-object v0, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzaf;

    sget-object v12, Lcom/google/android/recaptcha/internal/zzkw;->zze:Lcom/google/android/recaptcha/internal/zzkw;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzd()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v14, v5

    goto :goto_7

    :cond_a
    move-object v14, v1

    :goto_7
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzd()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move-object v15, v5

    goto :goto_8

    :cond_b
    move-object v15, v1

    :goto_8
    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v9, v8}, Lcom/google/android/recaptcha/internal/zzai;->zzc(Lcom/google/android/recaptcha/internal/zzaf;Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;)V

    invoke-static {v10}, Lcom/google/android/recaptcha/internal/zzaa;->zzf(Lcom/google/android/recaptcha/internal/zzaa;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v7

    :goto_9
    invoke-interface {v8, v5}, LB4/a;->b(Ljava/lang/Object;)V

    return-object v10

    :cond_c
    :try_start_4
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzp;->zzc()Lt4/u;

    move-result-object v4

    invoke-interface {v4}, Lt4/u;->d()Lb4/h;

    move-result-object v4

    invoke-static {v4}, Lt4/w;->c(Lb4/h;)V

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzp;->zzc()Lt4/u;

    move-result-object v4

    invoke-interface {v4}, Lt4/u;->d()Lb4/h;

    move-result-object v4

    sget-object v6, Lt4/t;->b:Lt4/t;

    invoke-interface {v4, v6}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v6

    check-cast v6, Lt4/W;

    if-eqz v6, :cond_f

    check-cast v6, Lt4/g0;

    new-instance v4, Lt4/f0;

    invoke-direct {v4, v6, v5}, Lt4/f0;-><init>(Lt4/g0;Lkotlin/coroutines/Continuation;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, LZ2/l;->D(Lkotlin/jvm/functions/Function2;)Lr4/e;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_d
    invoke-static {v6}, LZ3/h;->a0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    iput-object v7, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    iput-object v0, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    iput-object v5, v1, Lcom/google/android/recaptcha/internal/zzv;->zzc:Ljava/lang/Object;

    iput-object v5, v1, Lcom/google/android/recaptcha/internal/zzv;->zzh:Lcom/google/android/recaptcha/internal/zzw;

    iput-object v5, v1, Lcom/google/android/recaptcha/internal/zzv;->zzd:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    invoke-static {v4, v1}, Lt4/w;->k(Ljava/util/List;Ld4/c;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v1, v3, :cond_e

    return-object v3

    :cond_e
    move-object v3, v0

    move-object v1, v7

    :goto_b
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_f
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Current context doesn\'t contain Job in it: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_10
    return-object v3

    :cond_11
    :try_start_7
    new-instance v0, Lcom/google/android/recaptcha/RecaptchaException;

    sget-object v1, Lcom/google/android/recaptcha/RecaptchaErrorCode;->NETWORK_ERROR:Lcom/google/android/recaptcha/RecaptchaErrorCode;

    invoke-direct {v0, v1, v5, v7, v5}, Lcom/google/android/recaptcha/RecaptchaException;-><init>(Lcom/google/android/recaptcha/RecaptchaErrorCode;Ljava/lang/String;ILkotlin/jvm/internal/e;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_c
    move-object v1, v8

    :goto_d
    invoke-interface {v1, v5}, LB4/a;->b(Ljava/lang/Object;)V

    throw v0

    :cond_12
    return-object v3
.end method
