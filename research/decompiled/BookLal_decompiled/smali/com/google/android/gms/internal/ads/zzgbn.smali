.class public final Lcom/google/android/gms/internal/ads/zzgbn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zzb:Lcom/google/android/gms/internal/ads/zzgbn;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgbj;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgbj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbn;->zza:Lcom/google/android/gms/internal/ads/zzgbj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbi;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgbi;

    return-void
.end method

.method public static final zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgbn;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/ads/zzgbn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgbn;->zzb:Lcom/google/android/gms/internal/ads/zzgbn;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgbn;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgbn;->zzb:Lcom/google/android/gms/internal/ads/zzgbn;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgbn;->zzb:Lcom/google/android/gms/internal/ads/zzgbn;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzgbh;)V
    .locals 2

    const-class p1, Lcom/google/android/gms/internal/ads/zzgbn;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbn;->zza:Lcom/google/android/gms/internal/ads/zzgbj;

    const-string v1, "vendor_scoped_gpid_v2_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgbj;->zzf(Ljava/lang/String;)V

    const-string v1, "vendor_scoped_gpid_v2_creation_time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgbj;->zzf(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
