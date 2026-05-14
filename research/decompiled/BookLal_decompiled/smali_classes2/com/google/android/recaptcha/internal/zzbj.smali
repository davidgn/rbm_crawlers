.class public final Lcom/google/android/recaptcha/internal/zzbj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzbj;

.field private static zzb:Ljava/util/Set;

.field private static zzc:Ljava/util/Set;

.field private static zzd:Ljava/lang/Long;

.field private static zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzbj;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzbj;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzbj;->zza:Lcom/google/android/recaptcha/internal/zzbj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Lcom/google/android/recaptcha/internal/zzlr;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzlr;->zzf()Lcom/google/android/recaptcha/internal/zzlp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzlp;->zzi()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LZ3/g;->p0(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/recaptcha/internal/zzbj;->zzb:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzlr;->zzg()Lcom/google/android/recaptcha/internal/zzlp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzlp;->zzi()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LZ3/g;->p0(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    sput-object p0, Lcom/google/android/recaptcha/internal/zzbj;->zzc:Ljava/util/Set;

    return-void
.end method

.method public static final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "UTF-8"

    const-string v2, "&mov="

    const-string v3, "&mst="

    const-string v4, "&msv="

    const-string v5, "?k="

    sget-object v6, Lcom/google/android/recaptcha/internal/zzbj;->zzb:Ljava/util/Set;

    sget-object v7, LY3/j;->a:LY3/j;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/google/android/recaptcha/internal/zzbj;->zzc:Ljava/util/Set;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    return-object v7

    :cond_1
    :goto_0
    :try_start_0
    sget-object v6, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzaf;

    sget-object v14, Lcom/google/android/recaptcha/internal/zzkw;->zzp:Lcom/google/android/recaptcha/internal/zzkw;

    const/4 v13, 0x0

    move-object v8, v6

    move-object v9, v14

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/recaptcha/internal/zzs;

    invoke-direct {v8}, Lcom/google/android/recaptcha/internal/zzs;-><init>()V

    invoke-static {v6, v0, v8}, Lcom/google/android/recaptcha/internal/zzai;->zzb(Lcom/google/android/recaptcha/internal/zzaf;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzs;)V

    const/4 v6, 0x0

    sput-object v6, Lcom/google/android/recaptcha/internal/zzbj;->zzd:Ljava/lang/Long;

    const/4 v8, 0x0

    sput v8, Lcom/google/android/recaptcha/internal/zzbj;->zze:I

    new-instance v8, Ljava/net/URL;

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "18.1.2"

    invoke-static {v9, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-static {v10, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzu;->zzb()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    const-string v1, "Accept"

    const-string v2, "application/x-protobuffer"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlr;->zzj(Ljava/io/InputStream;)Lcom/google/android/recaptcha/internal/zzlr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzbj;->zza(Lcom/google/android/recaptcha/internal/zzlr;)V

    new-instance v0, Lcom/google/android/recaptcha/internal/zzaf;

    const/4 v13, 0x0

    move-object v8, v0

    move-object v9, v14

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/recaptcha/internal/zzbj;->zzd:Ljava/lang/Long;

    sget v2, Lcom/google/android/recaptcha/internal/zzbj;->zze:I

    invoke-static {v0, v1, v2}, Lcom/google/android/recaptcha/internal/zzai;->zza(Lcom/google/android/recaptcha/internal/zzaf;Ljava/lang/Long;I)V

    new-instance v0, Lcom/google/android/recaptcha/internal/zzaf;

    const/4 v13, 0x0

    move-object v8, v0

    move-object v9, v14

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    :try_start_1
    invoke-static {v0, v1, v2}, Lcom/google/android/recaptcha/internal/zzai;->zzc(Lcom/google/android/recaptcha/internal/zzaf;Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;)V

    move-object/from16 v20, v6

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    goto :goto_1

    :cond_2
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    new-instance v3, Lcom/google/android/recaptcha/internal/zzh;

    sget-object v4, Lcom/google/android/recaptcha/internal/zzf;->zzk:Lcom/google/android/recaptcha/internal/zzf;

    new-instance v5, Lcom/google/android/recaptcha/internal/zzd;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-direct {v5, v8}, Lcom/google/android/recaptcha/internal/zzd;-><init>(I)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/recaptcha/internal/zzh;-><init>(Lcom/google/android/recaptcha/internal/zzf;Lcom/google/android/recaptcha/internal/zzd;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v20, v6

    move-object v6, v3

    goto :goto_4

    :goto_1
    instance-of v3, v0, Ljava/net/MalformedURLException;

    if-eqz v3, :cond_3

    new-instance v3, Lcom/google/android/recaptcha/internal/zzh;

    sget-object v4, Lcom/google/android/recaptcha/internal/zzf;->zze:Lcom/google/android/recaptcha/internal/zzf;

    sget-object v5, Lcom/google/android/recaptcha/internal/zzd;->zzc:Lcom/google/android/recaptcha/internal/zzd;

    invoke-direct {v3, v4, v5}, Lcom/google/android/recaptcha/internal/zzh;-><init>(Lcom/google/android/recaptcha/internal/zzf;Lcom/google/android/recaptcha/internal/zzd;)V

    :goto_2
    move-object v6, v3

    goto :goto_3

    :cond_3
    instance-of v3, v0, Lcom/google/android/recaptcha/internal/zzgy;

    if-eqz v3, :cond_4

    new-instance v3, Lcom/google/android/recaptcha/internal/zzh;

    sget-object v4, Lcom/google/android/recaptcha/internal/zzf;->zze:Lcom/google/android/recaptcha/internal/zzf;

    sget-object v5, Lcom/google/android/recaptcha/internal/zzd;->zzS:Lcom/google/android/recaptcha/internal/zzd;

    invoke-direct {v3, v4, v5}, Lcom/google/android/recaptcha/internal/zzh;-><init>(Lcom/google/android/recaptcha/internal/zzf;Lcom/google/android/recaptcha/internal/zzd;)V

    goto :goto_2

    :cond_4
    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_5

    new-instance v3, Lcom/google/android/recaptcha/internal/zzh;

    sget-object v4, Lcom/google/android/recaptcha/internal/zzf;->zze:Lcom/google/android/recaptcha/internal/zzf;

    sget-object v5, Lcom/google/android/recaptcha/internal/zzd;->zzR:Lcom/google/android/recaptcha/internal/zzd;

    invoke-direct {v3, v4, v5}, Lcom/google/android/recaptcha/internal/zzh;-><init>(Lcom/google/android/recaptcha/internal/zzf;Lcom/google/android/recaptcha/internal/zzd;)V

    goto :goto_2

    :cond_5
    new-instance v3, Lcom/google/android/recaptcha/internal/zzh;

    sget-object v4, Lcom/google/android/recaptcha/internal/zzf;->zzb:Lcom/google/android/recaptcha/internal/zzf;

    sget-object v5, Lcom/google/android/recaptcha/internal/zzd;->zzb:Lcom/google/android/recaptcha/internal/zzd;

    invoke-direct {v3, v4, v5}, Lcom/google/android/recaptcha/internal/zzh;-><init>(Lcom/google/android/recaptcha/internal/zzf;Lcom/google/android/recaptcha/internal/zzd;)V

    goto :goto_2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-object/from16 v20, v3

    :goto_4
    if-eqz v6, :cond_6

    sget-object v0, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance v15, Lcom/google/android/recaptcha/internal/zzaf;

    sget-object v9, Lcom/google/android/recaptcha/internal/zzkw;->zzp:Lcom/google/android/recaptcha/internal/zzkw;

    const/4 v13, 0x0

    move-object v8, v15

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/recaptcha/internal/zzh;->zzb()Lcom/google/android/recaptcha/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzf;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v6}, Lcom/google/android/recaptcha/internal/zzh;->zza()Lcom/google/android/recaptcha/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzd;->zza()I

    move-result v17

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    invoke-static/range {v15 .. v20}, Lcom/google/android/recaptcha/internal/zzai;->zzd(Lcom/google/android/recaptcha/internal/zzaf;Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;Ljava/lang/String;)V

    :cond_6
    return-object v7
.end method

.method public static final zzc(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/google/android/recaptcha/internal/zzbj;->zzb:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-object v2, Lcom/google/android/recaptcha/internal/zzbj;->zzc:Ljava/util/Set;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    sget-object v1, Lcom/google/android/recaptcha/internal/zzbj;->zzc:Ljava/util/Set;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/google/android/recaptcha/internal/zzbj;->zzd(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-static {p0, v0}, Lcom/google/android/recaptcha/internal/zzbj;->zzd(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/google/android/recaptcha/internal/zzbj;->zzd:Ljava/lang/Long;

    if-nez p0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/google/android/recaptcha/internal/zzbj;->zzd:Ljava/lang/Long;

    :cond_4
    sget p0, Lcom/google/android/recaptcha/internal/zzbj;->zze:I

    add-int/2addr p0, v1

    sput p0, Lcom/google/android/recaptcha/internal/zzbj;->zze:I

    return v1
.end method

.method private static final zzd(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x2e

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p0, v1}, Ls4/e;->a0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return v3
.end method
