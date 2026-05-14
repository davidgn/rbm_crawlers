.class public final Lcom/google/android/gms/internal/ads/zzbjm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzbjf;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "gads:content_age_weight"

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjf;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjm;->zza:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:enable_content_fetching"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjm;->zzb:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:fingerprint_number"

    const-wide/16 v3, 0xa

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbjf;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjm;->zzc:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:content_length_weight"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjf;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjm;->zzd:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:min_content_len"

    const-wide/16 v1, 0xb

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjf;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjm;->zze:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:sleep_sec"

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbjf;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjm;->zzf:Lcom/google/android/gms/internal/ads/zzbjf;

    return-void
.end method
