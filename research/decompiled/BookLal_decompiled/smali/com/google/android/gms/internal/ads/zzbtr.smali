.class public final Lcom/google/android/gms/internal/ads/zzbtr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbtf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbtg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbsz;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsz;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtg;Lcom/google/android/gms/internal/ads/zzbtf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzc:Lcom/google/android/gms/internal/ads/zzbsz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzb:Lcom/google/android/gms/internal/ads/zzbtg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zza:Lcom/google/android/gms/internal/ads/zzbtf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LN2/o;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbtr;->zzb(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)LN2/o;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcfb;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzc:Lcom/google/android/gms/internal/ads/zzbsz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbsz;->zzb(Lcom/google/android/gms/internal/ads/zzazz;)Lcom/google/android/gms/internal/ads/zzbst;

    move-result-object v1

    const-string v2, "callJs > getEngine: Promise created"

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbto;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbto;-><init>(Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbst;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcfb;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbtp;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtp;-><init>(Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzbst;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcfi;->zze(Lcom/google/android/gms/internal/ads/zzcff;Lcom/google/android/gms/internal/ads/zzcfd;)V

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbst;Lcom/google/android/gms/internal/ads/zzbta;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcfb;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbou;->zzo:Lcom/google/android/gms/internal/ads/zzbpm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbtq;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbtq;-><init>(Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbst;Lcom/google/android/gms/internal/ads/zzcfb;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbpm;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpl;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzb:Lcom/google/android/gms/internal/ads/zzbtg;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/zzbtg;->zzb(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzbsd;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzd(Ljava/lang/Throwable;)Z

    const-string p3, "Unable to invokeJavascript"

    sget p4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p3, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbst;->zza()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbst;->zza()V

    throw p2
.end method

.method public final synthetic zzd()Lcom/google/android/gms/internal/ads/zzbtf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zza:Lcom/google/android/gms/internal/ads/zzbtf;

    return-object v0
.end method
