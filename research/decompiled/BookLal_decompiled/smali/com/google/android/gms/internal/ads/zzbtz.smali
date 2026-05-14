.class public final Lcom/google/android/gms/internal/ads/zzbtz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhad;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:LN2/o;


# direct methods
.method public constructor <init>(LN2/o;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtg;Lcom/google/android/gms/internal/ads/zzbtf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzb:LN2/o;

    const-string p1, "google.afma.activeView.handleUpdate"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LN2/o;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbtz;->zzb(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)LN2/o;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbty;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbty;-><init>(Lcom/google/android/gms/internal/ads/zzbtz;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zzb:LN2/o;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbta;)LN2/o;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcfb;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbou;->zzo:Lcom/google/android/gms/internal/ads/zzbpm;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbtx;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzbtx;-><init>(Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzcfb;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbpm;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpl;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "args"

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtz;->zza:Ljava/lang/String;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzbsd;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method
