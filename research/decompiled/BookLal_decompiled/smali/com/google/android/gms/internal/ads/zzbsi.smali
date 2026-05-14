.class final Lcom/google/android/gms/internal/ads/zzbsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcff;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsy;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoz;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbsz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsz;Lcom/google/android/gms/internal/ads/zzbsy;Lcom/google/android/gms/internal/ads/zzfoz;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsi;->zza:Lcom/google/android/gms/internal/ads/zzbsy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsi;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsi;->zzc:Lcom/google/android/gms/internal/ads/zzbsz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbru;

    const-string p1, "loadNewJavascriptEngine (success): Trying to acquire lock"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsi;->zzc:Lcom/google/android/gms/internal/ads/zzbsz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzg()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "loadNewJavascriptEngine (success): Lock acquired"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzl(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzi()Lcom/google/android/gms/internal/ads/zzbsy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsi;->zza:Lcom/google/android/gms/internal/ads/zzbsy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzi()Lcom/google/android/gms/internal/ads/zzbsy;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v1, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzi()Lcom/google/android/gms/internal/ads/zzbsy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbsy;->zzc()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsi;->zza:Lcom/google/android/gms/internal/ads/zzbsy;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzj(Lcom/google/android/gms/internal/ads/zzbsy;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjo;->zzd:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzh()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzh()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsi;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzm()Lcom/google/android/gms/internal/ads/zzfpc;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfpm;->zzb(Lcom/google/android/gms/internal/ads/zzfpc;)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "loadNewJavascriptEngine (success): Lock released"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
