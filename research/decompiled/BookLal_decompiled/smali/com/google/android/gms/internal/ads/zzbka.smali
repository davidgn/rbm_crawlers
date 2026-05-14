.class public final Lcom/google/android/gms/internal/ads/zzbka;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzg:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzh:Lcom/google/android/gms/internal/ads/zzbjf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:delegating_web_view_client_recursion_detection:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbka;->zza:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:paw_app_signals:document_start_js:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbka;->zzb:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:paw_app_signals:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbka;->zzc:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:paw_delegate_web_view_client:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbka;->zzd:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:paw_cache:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbka;->zze:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:paw_cache:refresh_interval_seconds"

    const-wide/16 v1, 0x1e

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjf;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbka;->zzf:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:paw_cache:retry_delay_seconds"

    const-wide/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjf;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbka;->zzg:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:paw_cache:ttl_ms"

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjf;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbka;->zzh:Lcom/google/android/gms/internal/ads/zzbjf;

    return-void
.end method
