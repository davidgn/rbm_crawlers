.class final Lcom/google/android/gms/internal/ads/zzbse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbov;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbsy;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbru;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbsz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsz;JLcom/google/android/gms/internal/ads/zzbsy;Lcom/google/android/gms/internal/ads/zzbru;)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbse;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbse;->zzb:Lcom/google/android/gms/internal/ads/zzbsy;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbse;->zzc:Lcom/google/android/gms/internal/ads/zzbru;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->zzd:Lcom/google/android/gms/internal/ads/zzbsz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbta;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->zza:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2a

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "onGmsg /jsLoaded. JsLoaded latency is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->zzd:Lcom/google/android/gms/internal/ads/zzbsz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzg()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    const-string v0, "loadJavascriptEngine > /jsLoaded handler: Lock acquired"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbse;->zzb:Lcom/google/android/gms/internal/ads/zzbsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfi;->zzi()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfi;->zzi()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzl(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbse;->zzc:Lcom/google/android/gms/internal/ads/zzbru;

    const-string v2, "/log"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbou;->zzg:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbta;->zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const-string v2, "/result"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbou;->zzo:Lcom/google/android/gms/internal/ads/zzbpm;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbta;->zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfi;->zzf(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbsz;->zzj(Lcom/google/android/gms/internal/ads/zzbsy;)V

    const-string p1, "Successfully loaded JS Engine."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Lock released"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
